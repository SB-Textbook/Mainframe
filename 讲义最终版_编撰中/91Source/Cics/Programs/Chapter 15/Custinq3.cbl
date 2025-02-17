       IDENTIFICATION DIVISION.
      *
       PROGRAM-ID.  CUSTINQ3.
      *
       ENVIRONMENT DIVISION.
      *
       DATA DIVISION.
      *
       WORKING-STORAGE SECTION.
      *
       01  SWITCHES.
      *
           05  VALID-DATA-SW               PIC X(01)   VALUE 'Y'.
               88  VALID-DATA                          VALUE 'Y'.
           05  CUSTOMER-FOUND-SW           PIC X(01)   VALUE 'Y'.
               88  CUSTOMER-FOUND                      VALUE 'Y'.
           05  MORE-INVOICES-SW            PIC X(01)   VALUE 'Y'.
               88  MORE-INVOICES                       VALUE 'Y'.
      *
       01  FLAGS.
      *
           05  DISPLAY-FLAG                PIC X(01).
               88  DISPLAY-NEW-CUSTOMER                VALUE '1'.
               88  DISPLAY-SPACES                      VALUE '2'.
               88  DISPLAY-LOW-VALUES                  VALUE '3'.
           05  SEND-FLAG                   PIC X(01).
               88  SEND-ERASE                          VALUE '1'.
               88  SEND-DATAONLY                       VALUE '2'.
               88  SEND-DATAONLY-ALARM                 VALUE '3'.
      *
       01  WORK-FIELDS.
      *
           05  INVOICE-SUB                 PIC S9(04) COMP.
      *
       01  INVOICE-LINE.
      *
           05  IL-INVOICE-NUMBER           PIC 9(06).
           05  FILLER                      PIC X(02)   VALUE SPACE.
           05  IL-PO-NUMBER                PIC X(10).
           05  FILLER                      PIC X(02)   VALUE SPACE.
           05  IL-INVOICE-DATE             PIC Z9/99/9999.
           05  FILLER                      PIC X(02)   VALUE SPACE.
           05  IL-INVOICE-TOTAL            PIC Z,ZZZ,ZZ9.99.
      *
       01  COMMUNICATION-AREA.
      *
           05  CA-CUSTOMER-NUMBER          PIC X(06).
      *
       01  RESPONSE-CODE                   PIC S9(08)  COMP.
      *
       COPY CUSTMAS.
      *
       COPY INVOICE.
      *
       COPY INQSET3.
      *
       COPY DFHAID.
      *
       COPY ERRPARM.
      *
       LINKAGE SECTION.
      *
       01  DFHCOMMAREA                     PIC X(06).
      *
       PROCEDURE DIVISION.
      *
       0000-PROCESS-CUSTOMER-INQUIRY.
      *
           IF EIBCALEN > ZERO
               MOVE DFHCOMMAREA TO COMMUNICATION-AREA
           END-IF.
      *
           EVALUATE TRUE
      *
               WHEN EIBCALEN = ZERO
                   MOVE LOW-VALUE TO CA-CUSTOMER-NUMBER
                   MOVE LOW-VALUE TO CUSTOMER-INQUIRY-MAP
                   SET SEND-ERASE TO TRUE
                   PERFORM 1500-SEND-INQUIRY-MAP
      *
               WHEN EIBAID = DFHCLEAR
                   MOVE LOW-VALUE TO CA-CUSTOMER-NUMBER
                   MOVE LOW-VALUE TO CUSTOMER-INQUIRY-MAP
                   SET SEND-ERASE TO TRUE
                   PERFORM 1500-SEND-INQUIRY-MAP
      *
               WHEN EIBAID = DFHPA1 OR DFHPA2 OR DFHPA3
                   CONTINUE
      *
               WHEN EIBAID = DFHPF3 OR DFHPF12
                   EXEC CICS
                       XCTL PROGRAM('INVMENU')
                   END-EXEC
      *
               WHEN EIBAID = DFHENTER
                   PERFORM 1000-DISPLAY-SELECTED-CUSTOMER
      *
               WHEN EIBAID = DFHPF5
                   PERFORM 2000-DISPLAY-FIRST-CUSTOMER
      *
               WHEN EIBAID = DFHPF6
                   PERFORM 3000-DISPLAY-LAST-CUSTOMER
      *
               WHEN EIBAID = DFHPF7
                   PERFORM 4000-DISPLAY-PREV-CUSTOMER
      *
               WHEN EIBAID = DFHPF8
                   PERFORM 5000-DISPLAY-NEXT-CUSTOMER
      *
               WHEN OTHER
                   MOVE LOW-VALUE TO CUSTOMER-INQUIRY-MAP
                   MOVE 'Invalid key pressed.' TO CIM-D-MESSAGE
                   SET SEND-DATAONLY-ALARM TO TRUE
                   PERFORM 1500-SEND-INQUIRY-MAP
      *
           END-EVALUATE.
      *
           EXEC CICS
               RETURN TRANSID('INQ3')
                      COMMAREA(COMMUNICATION-AREA)
           END-EXEC.
      *
       1000-DISPLAY-SELECTED-CUSTOMER.
      *
           PERFORM 1100-RECEIVE-INQUIRY-MAP.
           PERFORM 1200-EDIT-CUSTOMER-NUMBER.
           IF VALID-DATA
               PERFORM 1300-READ-CUSTOMER-RECORD
               IF CUSTOMER-FOUND
                   SET DISPLAY-NEW-CUSTOMER TO TRUE
                   PERFORM 1400-DISPLAY-INQUIRY-RESULTS
                   MOVE CM-CUSTOMER-NUMBER TO CA-CUSTOMER-NUMBER
               ELSE
                   SET DISPLAY-SPACES TO TRUE
                   PERFORM 1400-DISPLAY-INQUIRY-RESULTS
               END-IF
           ELSE
               SET DISPLAY-LOW-VALUES TO TRUE
               PERFORM 1400-DISPLAY-INQUIRY-RESULTS
           END-IF.
      *
       1100-RECEIVE-INQUIRY-MAP.
      *
           EXEC CICS
               RECEIVE MAP('INQMAP3')
                       MAPSET('INQSET3')
                       INTO(CUSTOMER-INQUIRY-MAP)
           END-EXEC.
      *
           INSPECT CUSTOMER-INQUIRY-MAP
               REPLACING ALL '_' BY SPACE.
      *
       1200-EDIT-CUSTOMER-NUMBER.
      *
           IF       CIM-L-CUSTNO = ZERO
                 OR CIM-D-CUSTNO = SPACE
               MOVE 'N' TO VALID-DATA-SW
               MOVE 'You must enter a customer number.'
                   TO CIM-D-MESSAGE
           END-IF.
      *
       1300-READ-CUSTOMER-RECORD.
      *
           EXEC CICS
               READ FILE('CUSTMAS')
                    INTO(CUSTOMER-MASTER-RECORD)
                    RIDFLD(CIM-D-CUSTNO)
                    RESP(RESPONSE-CODE)
           END-EXEC.
      *
           IF RESPONSE-CODE = DFHRESP(NOTFND)
               MOVE 'N' TO CUSTOMER-FOUND-SW
               MOVE 'That customer does not exist.' TO CIM-D-MESSAGE
           ELSE
               IF RESPONSE-CODE NOT = DFHRESP(NORMAL)
                   PERFORM 9999-TERMINATE-PROGRAM
               END-IF
           END-IF.
      *
       1400-DISPLAY-INQUIRY-RESULTS.
      *
           EVALUATE TRUE
               WHEN DISPLAY-NEW-CUSTOMER
                   MOVE CM-CUSTOMER-NUMBER TO CIM-D-CUSTNO
                   MOVE CM-LAST-NAME       TO CIM-D-LNAME
                   MOVE CM-FIRST-NAME      TO CIM-D-FNAME
                   MOVE CM-ADDRESS         TO CIM-D-ADDR
                   MOVE CM-CITY            TO CIM-D-CITY
                   MOVE CM-STATE           TO CIM-D-STATE
                   MOVE CM-ZIP-CODE        TO CIM-D-ZIPCODE
                   MOVE SPACE              TO CIM-D-MESSAGE
                   PERFORM 1410-START-INVOICE-BROWSE
                   PERFORM 1420-FORMAT-INVOICE-LINE
                       VARYING INVOICE-SUB FROM 1 BY 1
                       UNTIL INVOICE-SUB > 10
                   PERFORM 1440-END-INVOICE-BROWSE
                   SET SEND-DATAONLY TO TRUE
               WHEN DISPLAY-SPACES
                   MOVE LOW-VALUE TO CIM-D-CUSTNO
                   MOVE SPACE     TO CIM-D-LNAME
                                     CIM-D-FNAME
                                     CIM-D-ADDR
                                     CIM-D-CITY
                                     CIM-D-STATE
                                     CIM-D-ZIPCODE
                   PERFORM VARYING INVOICE-SUB FROM 1 BY 1
                           UNTIL INVOICE-SUB > 10
                       MOVE SPACE TO CIM-D-INVOICE-LINE(INVOICE-SUB)
                   END-PERFORM
                   SET SEND-DATAONLY-ALARM TO TRUE
               WHEN DISPLAY-LOW-VALUES
                       SET SEND-DATAONLY-ALARM TO TRUE
           END-EVALUATE.
           PERFORM 1500-SEND-INQUIRY-MAP.
      *
       1410-START-INVOICE-BROWSE.
      *
           EXEC CICS
               STARTBR FILE('INVPATH')
                       RIDFLD(CM-CUSTOMER-NUMBER)
                       EQUAL
                       RESP(RESPONSE-CODE)
           END-EXEC.
      *
           IF RESPONSE-CODE = DFHRESP(NOTFND)
               MOVE 'N' TO MORE-INVOICES-SW
           ELSE
               IF RESPONSE-CODE NOT = DFHRESP(NORMAL)
                   PERFORM 9999-TERMINATE-PROGRAM
               END-IF
           END-IF.
      *
       1420-FORMAT-INVOICE-LINE.
      *
           IF MORE-INVOICES
               PERFORM 1430-READ-NEXT-INVOICE
               MOVE INV-INVOICE-NUMBER TO IL-INVOICE-NUMBER
               MOVE INV-PO-NUMBER      TO IL-PO-NUMBER
               MOVE INV-INVOICE-DATE   TO IL-INVOICE-DATE
               MOVE INV-INVOICE-TOTAL  TO IL-INVOICE-TOTAL
               MOVE INVOICE-LINE      TO CIM-D-INVOICE-LINE(INVOICE-SUB)
           ELSE
               MOVE SPACE             TO CIM-D-INVOICE-LINE(INVOICE-SUB)
           END-IF.
      *
       1430-READ-NEXT-INVOICE.
      *
           EXEC CICS
               READNEXT FILE('INVPATH')
                        RIDFLD(CM-CUSTOMER-NUMBER)
                        INTO(INVOICE-RECORD)
                        RESP(RESPONSE-CODE)
           END-EXEC.
      *
           IF RESPONSE-CODE = DFHRESP(NORMAL)
               MOVE 'N' TO MORE-INVOICES-SW
           ELSE
               IF RESPONSE-CODE NOT = DFHRESP(DUPKEY)
                   PERFORM 9999-TERMINATE-PROGRAM
               END-IF
           END-IF.
      *
       1440-END-INVOICE-BROWSE.
      *
           EXEC CICS
               ENDBR FILE('INVPATH')
                     RESP(RESPONSE-CODE)
           END-EXEC.
      *
           IF RESPONSE-CODE NOT = DFHRESP(NORMAL)
               PERFORM 9999-TERMINATE-PROGRAM
           END-IF.
      *
       1500-SEND-INQUIRY-MAP.
      *
           MOVE 'INQ3' TO CIM-D-TRANID.
      *
           EVALUATE TRUE
               WHEN SEND-ERASE
                   EXEC CICS
                       SEND MAP('INQMAP3')
                            MAPSET('INQSET3')
                            FROM(CUSTOMER-INQUIRY-MAP)
                            ERASE
                   END-EXEC
               WHEN SEND-DATAONLY
                   EXEC CICS
                       SEND MAP('INQMAP3')
                            MAPSET('INQSET3')
                            FROM(CUSTOMER-INQUIRY-MAP)
                            DATAONLY
                   END-EXEC
               WHEN SEND-DATAONLY-ALARM
                   EXEC CICS
                       SEND MAP('INQMAP3')
                            MAPSET('INQSET3')
                            FROM(CUSTOMER-INQUIRY-MAP)
                            DATAONLY
                            ALARM
                   END-EXEC
           END-EVALUATE.
      *
       2000-DISPLAY-FIRST-CUSTOMER.
      *
           MOVE LOW-VALUE TO CM-CUSTOMER-NUMBER
                             CUSTOMER-INQUIRY-MAP.
           PERFORM 2100-START-CUSTOMER-BROWSE.
           IF CUSTOMER-FOUND
               PERFORM 2200-READ-NEXT-CUSTOMER
           END-IF.
           PERFORM 2300-END-CUSTOMER-BROWSE.
           IF CUSTOMER-FOUND
               SET DISPLAY-NEW-CUSTOMER TO TRUE
               PERFORM 1400-DISPLAY-INQUIRY-RESULTS
               MOVE CM-CUSTOMER-NUMBER TO CA-CUSTOMER-NUMBER
           ELSE
               SET DISPLAY-SPACES TO TRUE
               PERFORM 1400-DISPLAY-INQUIRY-RESULTS
           END-IF.
      *
       2100-START-CUSTOMER-BROWSE.
      *
           EXEC CICS
               STARTBR FILE('CUSTMAS')
                       RIDFLD(CM-CUSTOMER-NUMBER)
                       RESP(RESPONSE-CODE)
           END-EXEC.
      *
           IF RESPONSE-CODE = DFHRESP(NORMAL)
               MOVE 'Y' TO CUSTOMER-FOUND-SW
               MOVE SPACE TO CIM-D-MESSAGE
           ELSE
               IF RESPONSE-CODE = DFHRESP(NOTFND)
                   MOVE 'N' TO CUSTOMER-FOUND-SW
                   MOVE 'There are no customers in the file.'
                       TO CIM-D-MESSAGE
               ELSE
                   PERFORM 9999-TERMINATE-PROGRAM
               END-IF
           END-IF.
      *
       2200-READ-NEXT-CUSTOMER.
      *
           EXEC CICS
               READNEXT FILE('CUSTMAS')
                        INTO(CUSTOMER-MASTER-RECORD)
                        RIDFLD(CM-CUSTOMER-NUMBER)
                        RESP(RESPONSE-CODE)
           END-EXEC.
      *
           IF RESPONSE-CODE = DFHRESP(NORMAL)
               MOVE 'Y' TO CUSTOMER-FOUND-SW
           ELSE
               IF RESPONSE-CODE = DFHRESP(ENDFILE)
                   MOVE 'N' TO CUSTOMER-FOUND-SW
                   MOVE 'There are no more records in the file.'
                       TO CIM-D-MESSAGE
               ELSE
                   PERFORM 9999-TERMINATE-PROGRAM
               END-IF
           END-IF.
      *
       2300-END-CUSTOMER-BROWSE.
      *
           EXEC CICS
               ENDBR FILE('CUSTMAS')
               RESP(RESPONSE-CODE)
           END-EXEC.
      *
           IF RESPONSE-CODE NOT = DFHRESP(NORMAL)
               PERFORM 9999-TERMINATE-PROGRAM
           END-IF.
      *
       3000-DISPLAY-LAST-CUSTOMER.
      *
           MOVE HIGH-VALUE TO CM-CUSTOMER-NUMBER.
           MOVE LOW-VALUE  TO CUSTOMER-INQUIRY-MAP.
           PERFORM 2100-START-CUSTOMER-BROWSE.
           IF CUSTOMER-FOUND
               PERFORM 3100-READ-PREV-CUSTOMER
           END-IF.
           PERFORM 2300-END-CUSTOMER-BROWSE.
           IF CUSTOMER-FOUND
               SET DISPLAY-NEW-CUSTOMER TO TRUE
               PERFORM 1400-DISPLAY-INQUIRY-RESULTS
               MOVE CM-CUSTOMER-NUMBER TO CA-CUSTOMER-NUMBER
           ELSE
               SET DISPLAY-SPACES TO TRUE
               PERFORM 1400-DISPLAY-INQUIRY-RESULTS
           END-IF.
      *
       3100-READ-PREV-CUSTOMER.
      *
           EXEC CICS
               READPREV FILE('CUSTMAS')
                        INTO(CUSTOMER-MASTER-RECORD)
                        RIDFLD(CM-CUSTOMER-NUMBER)
                        RESP(RESPONSE-CODE)
           END-EXEC.
      *
           IF RESPONSE-CODE = DFHRESP(NORMAL)
               MOVE 'Y' TO CUSTOMER-FOUND-SW
           ELSE
               IF RESPONSE-CODE = DFHRESP(ENDFILE)
                   MOVE 'N' TO CUSTOMER-FOUND-SW
                   MOVE 'There are no more records in the file.'
                       TO CIM-D-MESSAGE
               ELSE
                   PERFORM 9999-TERMINATE-PROGRAM
               END-IF
           END-IF.
      *
       4000-DISPLAY-PREV-CUSTOMER.
      *
           MOVE CA-CUSTOMER-NUMBER TO CM-CUSTOMER-NUMBER.
           MOVE LOW-VALUE          TO CUSTOMER-INQUIRY-MAP.
           PERFORM 2100-START-CUSTOMER-BROWSE.
           IF CUSTOMER-FOUND
               PERFORM 2200-READ-NEXT-CUSTOMER
               PERFORM 3100-READ-PREV-CUSTOMER
               PERFORM 3100-READ-PREV-CUSTOMER
           END-IF.
           PERFORM 2300-END-CUSTOMER-BROWSE.
           IF CUSTOMER-FOUND
               SET DISPLAY-NEW-CUSTOMER TO TRUE
               PERFORM 1400-DISPLAY-INQUIRY-RESULTS
               MOVE CM-CUSTOMER-NUMBER TO CA-CUSTOMER-NUMBER
           ELSE
               SET DISPLAY-LOW-VALUES TO TRUE
               PERFORM 1400-DISPLAY-INQUIRY-RESULTS
           END-IF.
      *
       5000-DISPLAY-NEXT-CUSTOMER.
      *
           MOVE CA-CUSTOMER-NUMBER TO CM-CUSTOMER-NUMBER.
           MOVE LOW-VALUE          TO CUSTOMER-INQUIRY-MAP.
           PERFORM 2100-START-CUSTOMER-BROWSE.
           IF CUSTOMER-FOUND
               PERFORM 2200-READ-NEXT-CUSTOMER
               PERFORM 2200-READ-NEXT-CUSTOMER
           END-IF.
           PERFORM 2300-END-CUSTOMER-BROWSE.
           IF CUSTOMER-FOUND
               SET DISPLAY-NEW-CUSTOMER TO TRUE
               PERFORM 1400-DISPLAY-INQUIRY-RESULTS
               MOVE CM-CUSTOMER-NUMBER TO CA-CUSTOMER-NUMBER
           ELSE
               SET DISPLAY-LOW-VALUES TO TRUE
               PERFORM 1400-DISPLAY-INQUIRY-RESULTS
           END-IF.
      *
       9999-TERMINATE-PROGRAM.
      *
           MOVE EIBRESP  TO ERR-RESP.
           MOVE EIBRESP2 TO ERR-RESP2.
           MOVE EIBTRNID TO ERR-TRNID.
           MOVE EIBRSRCE TO ERR-RSRCE.
      *
           EXEC CICS
               XCTL PROGRAM('SYSERR')
                    COMMAREA(ERROR-PARAMETERS)
           END-EXEC.
