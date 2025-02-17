       IDENTIFICATION DIVISION.
      *
       PROGRAM-ID.  ORDRENT.
      *
       ENVIRONMENT DIVISION.
      *
       DATA DIVISION.
      *
       WORKING-STORAGE SECTION.
      *
       01  SWITCHES.
      *
           05  VALID-DATA-SW                   PIC X(01) VALUE 'Y'.
               88  VALID-DATA                            VALUE 'Y'.
           05  CUSTOMER-FOUND-SW               PIC X(01) VALUE 'Y'.
               88  CUSTOMER-FOUND                        VALUE 'Y'.
           05  PRODUCT-FOUND-SW                PIC X(01) VALUE 'Y'.
               88  PRODUCT-FOUND                         VALUE 'Y'.
           05  VALID-QUANTITY-SW               PIC X(01) VALUE 'Y'.
               88  VALID-QUANTITY                        VALUE 'Y'.
           05  VALID-NET-SW                    PIC X(01) VALUE 'Y'.
               88  VALID-NET                             VALUE 'Y'.
      *
       01  FLAGS.
      *
           05  SEND-FLAG                       PIC X(01).
               88  SEND-ERASE                          VALUE '1'.
               88  SEND-DATAONLY                       VALUE '2'.
               88  SEND-DATAONLY-ALARM                 VALUE '3'.
           05  FIELD-PROTECTION-FLAG           PIC X(01).
               88  PROTECT-FIELDS                      VALUE '1'.
               88  UNPROTECT-FIELDS                    VALUE '2'.
      *
       01  WORK-FIELDS.
      *
           05  ITEM-SUB            PIC S9(03)  COMP-3  VALUE ZERO.
           05  LINE-ITEM-COUNT     PIC S9(03)  COMP-3  VALUE ZERO.
           05  NET-NUMERIC         PIC 9(07)V99.
           05  QTY-NUMERIC         PIC 9(05).
           05  ABSOLUTE-TIME       PIC S9(15)  COMP-3.
           05  TODAYS-DATE         PIC X(10).
      *
       01  RESPONSE-CODE                     PIC S9(08)  COMP.
      *
       01  COMMUNICATION-AREA.
      *
           05  CA-CONTEXT-FLAG               PIC X(01).
               88  PROCESS-ENTRY                       VALUE '1'.
               88  PROCESS-VERIFY                      VALUE '2'.
           05  CA-TOTAL-ORDERS               PIC S9(03) COMP-3.
           05  CA-INVOICE-RECORD             PIC X(318).
           05  CA-FIELDS-ENTERED.
               10  CA-PO-ENTERED-SW          PIC X(01).
                   88  CA-PO-ENTERED                VALUE 'Y'.
               10  CA-LINE-ITEM              OCCURS 10.
                   15  CA-PCODE-ENTERED-SW   PIC X(01).
                       88  CA-PCODE-ENTERED         VALUE 'Y'.
                   15  CA-QTY-ENTERED-SW     PIC X(01).
                       88  CA-QTY-ENTERED           VALUE 'Y'.
                   15  CA-NET-ENTERED-SW     PIC X(01).
                       88  CA-NET-ENTERED           VALUE 'Y'.
      *
       01  TOTAL-LINE.
      *
           05  TL-TOTAL-ORDERS   PIC ZZ9.
           05  FILLER            PIC X(20) VALUE ' Orders entered.  Pr'.
           05  FILLER            PIC X(20) VALUE 'ess Enter to continu'.
           05  FILLER            PIC X(02) VALUE 'e.'.
      *
       COPY INVOICE.
      *
       COPY CUSTMAS.
      *
       COPY PRODUCT.
      *
       COPY INVCTL.
      *
       COPY ORDSET1.
      *
       COPY DFHAID.
      *
       COPY ATTR.
      *
       COPY ERRPARM.
      *
       LINKAGE SECTION.
      *
       01  DFHCOMMAREA             PIC X(352).
      *
       PROCEDURE DIVISION.
      *
       0000-ENTER-ORDERS.
      *
           IF EIBCALEN > ZERO
               MOVE DFHCOMMAREA TO COMMUNICATION-AREA
           END-IF.
      *
           EVALUATE TRUE
      *
               WHEN EIBCALEN = ZERO
                   MOVE LOW-VALUE TO ORDMAP1
                   MOVE LOW-VALUE TO COMMUNICATION-AREA
                   MOVE ZERO      TO CA-TOTAL-ORDERS
                   MOVE 'Type order details.  Then press Enter.'
                       TO ORD-D-INSTR
                   MOVE 'F3=Exit   F12=Cancel' TO ORD-D-FKEY
                   MOVE -1 TO ORD-L-CUSTNO
                   SET SEND-ERASE TO TRUE
                   PERFORM 1400-SEND-ORDER-MAP
                   SET PROCESS-ENTRY TO TRUE
      *
               WHEN EIBAID = DFHCLEAR
                   MOVE LOW-VALUE TO ORDMAP1
                   MOVE LOW-VALUE TO CA-INVOICE-RECORD
                                     CA-FIELDS-ENTERED
                   MOVE 'Type order details.  Then press Enter.'
                       TO ORD-D-INSTR
                   MOVE 'F3=Exit   F12=Cancel' TO ORD-D-FKEY
                   MOVE -1 TO ORD-L-CUSTNO
                   SET SEND-ERASE TO TRUE
                   PERFORM 1400-SEND-ORDER-MAP
                   SET PROCESS-ENTRY TO TRUE
      *
               WHEN EIBAID = DFHPA1 OR DFHPA2 OR DFHPA3
                   CONTINUE
      *
               WHEN EIBAID = DFHPF3
                   PERFORM 3000-SEND-TOTAL-LINE
                   EXEC CICS
                       RETURN TRANSID('MENU')
                   END-EXEC
      *
               WHEN EIBAID = DFHPF12
                   IF PROCESS-VERIFY
                       MOVE LOW-VALUE TO ORDMAP1
                       MOVE LOW-VALUE TO CA-INVOICE-RECORD
                                         CA-FIELDS-ENTERED
                       MOVE 'Type order details.  Then press Enter.'
                           TO ORD-D-INSTR
                       MOVE 'F3=Exit   F12=Cancel' TO ORD-D-FKEY
                       MOVE -1 TO ORD-L-CUSTNO
                       SET SEND-ERASE TO TRUE
                       PERFORM 1400-SEND-ORDER-MAP
                       SET PROCESS-ENTRY TO TRUE
                   ELSE
                       IF PROCESS-ENTRY
                           PERFORM 3000-SEND-TOTAL-LINE
                           EXEC CICS
                               RETURN TRANSID('MENU')
                           END-EXEC
                       END-IF
                   END-IF
      *
               WHEN EIBAID = DFHENTER
                   IF PROCESS-ENTRY
                       PERFORM 1000-PROCESS-ORDER-MAP
                   ELSE
                       IF PROCESS-VERIFY
                           PERFORM 2000-PROCESS-POST-ORDER
                           SET PROCESS-ENTRY TO TRUE
                       END-IF
                   END-IF
      *
               WHEN EIBAID = DFHPF4
                   IF PROCESS-VERIFY
                       MOVE LOW-VALUE TO ORDMAP1
                       MOVE 'Type corrections.  Then press Enter.'
                           TO ORD-D-INSTR
                       MOVE 'F3=Exit   F12=Cancel' TO ORD-D-FKEY
                       MOVE -1 TO ORD-L-CUSTNO
                       SET UNPROTECT-FIELDS TO TRUE
                       SET SEND-DATAONLY TO TRUE
                       PERFORM 1400-SEND-ORDER-MAP
                       SET PROCESS-ENTRY TO TRUE
                   ELSE
                       IF PROCESS-ENTRY
                           MOVE LOW-VALUE TO ORDMAP1
                           MOVE 'Invalid key pressed.' TO ORD-D-MESSAGE
                           MOVE -1 TO ORD-L-CUSTNO
                           SET SEND-DATAONLY-ALARM TO TRUE
                           PERFORM 1400-SEND-ORDER-MAP
                       END-IF
                   END-IF
      *
               WHEN OTHER
                   MOVE LOW-VALUE TO ORDMAP1
                   MOVE 'Invalid key pressed.' TO ORD-D-MESSAGE
                   MOVE -1 TO ORD-L-CUSTNO
                   SET SEND-DATAONLY-ALARM TO TRUE
                   PERFORM 1400-SEND-ORDER-MAP
      *
           END-EVALUATE.
      *
           EXEC CICS
               RETURN TRANSID('ORD1')
                      COMMAREA(COMMUNICATION-AREA)
           END-EXEC.
      *
       1000-PROCESS-ORDER-MAP.
      *
           PERFORM 1100-RECEIVE-ORDER-MAP.
           PERFORM 1200-EDIT-ORDER-DATA.
      *
           IF VALID-DATA
               PERFORM 1300-FORMAT-INVOICE-RECORD
               MOVE 'Press Enter to post this order.  Or press F4 to ent
      -             'er corrections.' TO ORD-D-INSTR
               MOVE 'F3=Exit   F4=Change   F12=Cancel' TO ORD-D-FKEY
               MOVE SPACE TO ORD-D-MESSAGE
               SET SEND-DATAONLY TO TRUE
               SET PROTECT-FIELDS TO TRUE
               PERFORM 1400-SEND-ORDER-MAP
               SET PROCESS-VERIFY TO TRUE
           ELSE
               MOVE 'Type corrections.  Then press Enter.'
                   TO ORD-D-INSTR
               MOVE 'F3=Exit   F12=Cancel' TO ORD-D-FKEY
               SET SEND-DATAONLY-ALARM TO TRUE
               PERFORM 1400-SEND-ORDER-MAP
           END-IF.
      *
       1100-RECEIVE-ORDER-MAP.
      *
           EXEC CICS
               RECEIVE MAP('ORDMAP1')
                       MAPSET('ORDSET1')
                       INTO(ORDMAP1)
           END-EXEC.
      *
           INSPECT ORDMAP1
                REPLACING ALL '_' BY SPACE.
      *
       1200-EDIT-ORDER-DATA.
      *
           MOVE ATTR-NO-HIGHLIGHT TO ORD-H-CUSTNO
                                     ORD-H-PO.
           MOVE ZERO TO LINE-ITEM-COUNT
                        INV-INVOICE-TOTAL.
      *
           PERFORM 1220-EDIT-LINE-ITEM
               VARYING ITEM-SUB FROM 10 BY -1
                 UNTIL ITEM-SUB < 1.
      *
           MOVE INV-INVOICE-TOTAL TO ORD-D-TOTAL.
           IF        LINE-ITEM-COUNT = ZERO
                 AND VALID-DATA
               MOVE ATTR-REVERSE TO ORD-H-PCODE(1)
               MOVE -1 TO ORD-L-PCODE(1)
               MOVE 'You must enter at least one line item.'
                   TO ORD-D-MESSAGE
               MOVE 'N' TO VALID-DATA-SW
           END-IF.
      *
           IF        ORD-L-PO = ZERO
                  OR ORD-D-PO = SPACE
               MOVE 'N' TO CA-PO-ENTERED-SW
           ELSE
               MOVE 'Y' TO CA-PO-ENTERED-SW
           END-IF.
      *
           IF       ORD-L-CUSTNO = ZERO
                 OR ORD-D-CUSTNO = SPACE
               MOVE ATTR-REVERSE TO ORD-H-CUSTNO
               MOVE -1 TO ORD-L-CUSTNO
               MOVE 'You must enter a customer number.'
                   TO ORD-D-MESSAGE
               MOVE 'N' TO VALID-DATA-SW
           ELSE
               PERFORM 1210-READ-CUSTOMER-RECORD
               IF CUSTOMER-FOUND
                   MOVE CM-LAST-NAME  TO ORD-D-LNAME
                   MOVE CM-FIRST-NAME TO ORD-D-FNAME
                   MOVE CM-ADDRESS    TO ORD-D-ADDR
                   MOVE CM-CITY       TO ORD-D-CITY
                   MOVE CM-STATE      TO ORD-D-STATE
                   MOVE CM-ZIP-CODE   TO ORD-D-ZIPCODE
               ELSE
                   MOVE SPACE TO ORD-D-LNAME
                                 ORD-D-FNAME
                                 ORD-D-ADDR
                                 ORD-D-CITY
                                 ORD-D-STATE
                                 ORD-D-ZIPCODE
                   MOVE ATTR-REVERSE TO ORD-H-CUSTNO
                   MOVE -1 TO ORD-L-CUSTNO
                   MOVE 'That customer does not exist.'
                       TO ORD-D-MESSAGE
                   MOVE 'N' TO VALID-DATA-SW
               END-IF
           END-IF.
      *
           IF VALID-DATA
               MOVE -1 TO ORD-L-CUSTNO
           END-IF.
      *
       1210-READ-CUSTOMER-RECORD.
      *
           EXEC CICS
               READ FILE('CUSTMAS')
                    INTO(CUSTOMER-MASTER-RECORD)
                    RIDFLD(ORD-D-CUSTNO)
                    RESP(RESPONSE-CODE)
           END-EXEC.
      *
           IF RESPONSE-CODE = DFHRESP(NORMAL)
               MOVE 'Y' TO CUSTOMER-FOUND-SW
           ELSE
               IF RESPONSE-CODE = DFHRESP(NOTFND)
                   MOVE 'N' TO CUSTOMER-FOUND-SW
               ELSE
                   PERFORM 9999-TERMINATE-PROGRAM
               END-IF
           END-IF.
      *
       1220-EDIT-LINE-ITEM.
      *
           MOVE ATTR-NO-HIGHLIGHT TO ORD-H-PCODE(ITEM-SUB)
                                     ORD-H-QTY(ITEM-SUB)
                                     ORD-H-NET(ITEM-SUB).
           MOVE 'N' TO PRODUCT-FOUND-SW.
           MOVE 'N' TO VALID-QUANTITY-SW.
      *
           IF        ORD-L-PCODE(ITEM-SUB) > ZERO
                 AND ORD-D-PCODE(ITEM-SUB) NOT = SPACE
               MOVE 'Y' TO CA-PCODE-ENTERED-SW(ITEM-SUB)
           ELSE
               MOVE 'N' TO CA-PCODE-ENTERED-SW(ITEM-SUB)
           END-IF.
      *
           IF        ORD-L-QTY(ITEM-SUB) > ZERO
                 AND ORD-D-QTY-ALPHA(ITEM-SUB) NOT = SPACE
               MOVE 'Y' TO CA-QTY-ENTERED-SW(ITEM-SUB)
           ELSE
               MOVE 'N' TO CA-QTY-ENTERED-SW(ITEM-SUB)
           END-IF.
      *
           IF        ORD-L-NET(ITEM-SUB) > ZERO
                 AND ORD-D-NET-ALPHA(ITEM-SUB) NOT = SPACE
               MOVE 'Y' TO CA-NET-ENTERED-SW(ITEM-SUB)
           ELSE
               MOVE 'N' TO CA-NET-ENTERED-SW(ITEM-SUB)
           END-IF.
      *
           IF            CA-NET-ENTERED(ITEM-SUB)
                 AND NOT CA-PCODE-ENTERED(ITEM-SUB)
               MOVE ATTR-REVERSE TO ORD-H-PCODE(ITEM-SUB)
               MOVE -1 TO ORD-L-PCODE(ITEM-SUB)
               MOVE 'You cannot enter a net price without a product code
      -        '.' TO ORD-D-MESSAGE
               MOVE 'N' TO VALID-DATA-SW
           END-IF.
      *
           IF CA-NET-ENTERED(ITEM-SUB)
               CALL 'NUMEDIT' USING ORD-D-NET-ALPHA(ITEM-SUB)
                                    NET-NUMERIC
                                    VALID-NET-SW
               IF VALID-NET
                   MOVE NET-NUMERIC TO ORD-D-NET(ITEM-SUB)
               ELSE
                   MOVE ATTR-REVERSE TO ORD-H-NET(ITEM-SUB)
                   MOVE -1 TO ORD-L-NET(ITEM-SUB)
                   MOVE 'Net price must be numeric.' TO ORD-D-MESSAGE
                   MOVE 'N' TO VALID-DATA-SW
                   MOVE 'N' TO VALID-QUANTITY-SW
               END-IF
           END-IF.
      *
           IF            CA-QTY-ENTERED(ITEM-SUB)
                 AND NOT CA-PCODE-ENTERED(ITEM-SUB)
               MOVE ATTR-REVERSE TO ORD-H-PCODE(ITEM-SUB)
               MOVE -1 TO ORD-L-PCODE(ITEM-SUB)
               MOVE 'You cannot enter a quantity without a product code.
      -            ' ' TO ORD-D-MESSAGE
               MOVE 'N' TO VALID-DATA-SW
           END-IF.
      *
           IF CA-QTY-ENTERED(ITEM-SUB)
               CALL 'INTEDIT' USING ORD-D-QTY-ALPHA(ITEM-SUB)
                                    QTY-NUMERIC
                                    VALID-QUANTITY-SW
               IF VALID-QUANTITY
                   IF QTY-NUMERIC > ZERO
                       MOVE QTY-NUMERIC TO ORD-D-QTY(ITEM-SUB)
                   ELSE
                       MOVE ATTR-REVERSE TO ORD-H-QTY(ITEM-SUB)
                       MOVE -1 TO ORD-L-QTY(ITEM-SUB)
                       MOVE 'Quantity must be greater than zero.'
                           TO ORD-D-MESSAGE
                       MOVE 'N' TO VALID-DATA-SW
                       MOVE 'N' TO VALID-QUANTITY-SW
                   END-IF
               ELSE
                   MOVE ATTR-REVERSE TO ORD-H-QTY(ITEM-SUB)
                   MOVE -1 TO ORD-L-QTY(ITEM-SUB)
                   MOVE 'Quantity must be numeric.' TO ORD-D-MESSAGE
                   MOVE 'N' TO VALID-DATA-SW
                   MOVE 'N' TO VALID-QUANTITY-SW
               END-IF
           END-IF.
      *
           IF            CA-PCODE-ENTERED(ITEM-SUB)
                 AND NOT CA-QTY-ENTERED(ITEM-SUB)
               MOVE ATTR-REVERSE TO ORD-H-QTY(ITEM-SUB)
               MOVE -1 TO ORD-L-QTY(ITEM-SUB)
               MOVE 'You must enter a quantity.' TO ORD-D-MESSAGE
               MOVE 'N' TO VALID-DATA-SW
           END-IF.
      *
           IF NOT CA-PCODE-ENTERED(ITEM-SUB)
               MOVE SPACE TO ORD-D-DESC(ITEM-SUB)
               MOVE ZERO  TO ORD-D-LIST(ITEM-SUB)
                             ORD-D-AMOUNT(ITEM-SUB)
           ELSE
               ADD 1 TO LINE-ITEM-COUNT
               PERFORM 1230-READ-PRODUCT-RECORD
               IF PRODUCT-FOUND
                   MOVE PRM-PRODUCT-DESCRIPTION
                                       TO ORD-D-DESC(ITEM-SUB)
                   MOVE PRM-UNIT-PRICE TO ORD-D-LIST(ITEM-SUB)
                   IF NOT CA-NET-ENTERED(ITEM-SUB)
                       MOVE PRM-UNIT-PRICE TO ORD-D-NET(ITEM-SUB)
                                              NET-NUMERIC
                   END-IF
                   IF VALID-QUANTITY AND VALID-NET
                       MULTIPLY NET-NUMERIC BY QTY-NUMERIC
                           GIVING ORD-D-AMOUNT(ITEM-SUB)
                                  INV-AMOUNT(ITEM-SUB)
                           ON SIZE ERROR
                               MOVE ATTR-REVERSE TO ORD-H-QTY(ITEM-SUB)
                               MOVE -1 TO ORD-L-QTY(ITEM-SUB)
                               MOVE 'Line item amount is too large.'
                                   TO ORD-D-MESSAGE
                               MOVE 'N' TO VALID-DATA-SW
                               MOVE ZERO TO ORD-D-AMOUNT(ITEM-SUB)
                                            INV-AMOUNT(ITEM-SUB)
                       END-MULTIPLY
                       ADD INV-AMOUNT(ITEM-SUB) TO INV-INVOICE-TOTAL
                           ON SIZE ERROR
                               MOVE ATTR-REVERSE TO ORD-H-QTY(ITEM-SUB)
                               MOVE -1 TO ORD-L-QTY(ITEM-SUB)
                               MOVE 'Invoice total is too large.'
                                   TO ORD-D-MESSAGE
                               MOVE 'N' TO VALID-DATA-SW
                               MOVE ZERO TO INV-INVOICE-TOTAL
                       END-ADD
                   END-IF
               ELSE
                   MOVE SPACE TO ORD-D-DESC(ITEM-SUB)
                   MOVE ZERO  TO ORD-D-LIST(ITEM-SUB)
                                 ORD-D-AMOUNT(ITEM-SUB)
                   MOVE ATTR-REVERSE TO ORD-H-PCODE(ITEM-SUB)
                   MOVE -1    TO ORD-L-PCODE(ITEM-SUB)
                   MOVE 'That product does not exist.'
                              TO ORD-D-MESSAGE
                   MOVE 'N'   TO VALID-DATA-SW
               END-IF
           END-IF.
      *
       1230-READ-PRODUCT-RECORD.
      *
           EXEC CICS
               READ FILE('PRODUCT')
                    INTO(PRODUCT-MASTER-RECORD)
                    RIDFLD(ORD-D-PCODE(ITEM-SUB))
                    RESP(RESPONSE-CODE)
           END-EXEC.
      *
           IF RESPONSE-CODE = DFHRESP(NORMAL)
               MOVE 'Y' TO PRODUCT-FOUND-SW
           ELSE
               IF RESPONSE-CODE = DFHRESP(NOTFND)
                   MOVE 'N' TO PRODUCT-FOUND-SW
               ELSE
                   PERFORM 9999-TERMINATE-PROGRAM
               END-IF
           END-IF.
      *
       1300-FORMAT-INVOICE-RECORD.
      *
           EXEC CICS
               ASKTIME ABSTIME(ABSOLUTE-TIME)
           END-EXEC.
      *
           EXEC CICS
               FORMATTIME ABSTIME(ABSOLUTE-TIME)
               MMDDYYYY(INV-INVOICE-DATE)
           END-EXEC.
      *
           MOVE ORD-D-CUSTNO TO INV-CUSTOMER-NUMBER.
           MOVE ORD-D-PO     TO INV-PO-NUMBER.
      *
           PERFORM VARYING ITEM-SUB FROM 1 BY 1
                     UNTIL ITEM-SUB > 10
               IF CA-PCODE-ENTERED(ITEM-SUB)
                   MOVE ORD-D-PCODE(ITEM-SUB)
                             TO INV-PRODUCT-CODE(ITEM-SUB)
                   MOVE ORD-D-QTY(ITEM-SUB)
                             TO INV-QUANTITY(ITEM-SUB)
                   MOVE ORD-D-NET(ITEM-SUB)
                             TO INV-UNIT-PRICE(ITEM-SUB)
               ELSE
                   MOVE SPACE TO INV-PRODUCT-CODE(ITEM-SUB)
                   MOVE ZERO  TO INV-QUANTITY(ITEM-SUB)
                                 INV-UNIT-PRICE(ITEM-SUB)
                                 INV-AMOUNT(ITEM-SUB)
               END-IF
           END-PERFORM.
      *
           MOVE INVOICE-RECORD TO CA-INVOICE-RECORD.
      *
       1400-SEND-ORDER-MAP.
      *
           MOVE 'ORD1' TO ORD-D-TRANID.
      *
           IF PROTECT-FIELDS
               PERFORM 1410-PROTECT-FIELDS
           ELSE
               IF UNPROTECT-FIELDS
                   PERFORM 1420-UNPROTECT-FIELDS
               END-IF
           END-IF.
      *
           EVALUATE TRUE
               WHEN SEND-ERASE
                   EXEC CICS
                       SEND MAP('ORDMAP1')
                            MAPSET('ORDSET1')
                            FROM(ORDMAP1)
                            CURSOR
                            ERASE
                   END-EXEC
               WHEN SEND-DATAONLY
                   EXEC CICS
                       SEND MAP('ORDMAP1')
                            MAPSET('ORDSET1')
                            FROM(ORDMAP1)
                            CURSOR
                            DATAONLY
                   END-EXEC
               WHEN SEND-DATAONLY-ALARM
                   EXEC CICS
                       SEND MAP('ORDMAP1')
                            MAPSET('ORDSET1')
                            FROM(ORDMAP1)
                            CURSOR
                            DATAONLY
                            ALARM
                   END-EXEC
           END-EVALUATE.
      *
       1410-PROTECT-FIELDS.
      *
           MOVE ATTR-PROT TO ORD-A-CUSTNO.
           IF CA-PO-ENTERED
               MOVE ATTR-PROT TO ORD-A-PO
           ELSE
               MOVE ATTR-PROT-DARK TO ORD-A-PO
           END-IF.
      *
           PERFORM VARYING ITEM-SUB FROM 1 BY 1
                   UNTIL ITEM-SUB > 10
               IF CA-PCODE-ENTERED(ITEM-SUB)
                   MOVE ATTR-PROT TO ORD-A-PCODE(ITEM-SUB)
               ELSE
                   MOVE ATTR-PROT-DARK TO ORD-A-PCODE(ITEM-SUB)
               END-IF
               IF CA-QTY-ENTERED(ITEM-SUB)
                   MOVE ATTR-PROT TO ORD-A-QTY(ITEM-SUB)
               ELSE
                   MOVE ATTR-PROT-DARK TO ORD-A-QTY(ITEM-SUB)
               END-IF
               IF        CA-NET-ENTERED(ITEM-SUB)
                      OR CA-PCODE-ENTERED(ITEM-SUB)
                   MOVE ATTR-PROT TO ORD-A-NET(ITEM-SUB)
               ELSE
                   MOVE ATTR-PROT-DARK TO ORD-A-NET(ITEM-SUB)
               END-IF
           END-PERFORM.
      *
       1420-UNPROTECT-FIELDS.
      *
           MOVE ATTR-UNPROT-MDT TO ORD-A-CUSTNO.
           IF CA-PO-ENTERED
               MOVE ATTR-UNPROT-MDT TO ORD-A-PO
           ELSE
               MOVE ATTR-UNPROT     TO ORD-A-PO
           END-IF.
      *
           MOVE ATTR-TURQUOISE TO ORD-C-CUSTNO
                                  ORD-C-PO.
      *
           PERFORM VARYING ITEM-SUB FROM 1 BY 1
                   UNTIL ITEM-SUB > 10
               IF CA-PCODE-ENTERED(ITEM-SUB)
                   MOVE ATTR-UNPROT-MDT TO ORD-A-PCODE(ITEM-SUB)
               ELSE
                   MOVE ATTR-UNPROT     TO ORD-A-PCODE(ITEM-SUB)
               END-IF
               IF CA-QTY-ENTERED(ITEM-SUB)
                   MOVE ATTR-UNPROT-MDT TO ORD-A-QTY(ITEM-SUB)
               ELSE
                   MOVE ATTR-UNPROT     TO ORD-A-QTY(ITEM-SUB)
               END-IF
               IF CA-NET-ENTERED(ITEM-SUB)
                   MOVE ATTR-UNPROT-MDT TO ORD-A-NET(ITEM-SUB)
               ELSE
                   MOVE ATTR-UNPROT     TO ORD-A-NET(ITEM-SUB)
               END-IF
               MOVE ATTR-TURQUOISE TO ORD-C-PCODE(ITEM-SUB)
                                      ORD-C-QTY(ITEM-SUB)
                                      ORD-C-NET(ITEM-SUB)
           END-PERFORM.
      *
       2000-PROCESS-POST-ORDER.
      *
           MOVE CA-INVOICE-RECORD TO INVOICE-RECORD.
      *
           EXEC CICS
               LINK PROGRAM('GETINV')
                    COMMAREA(INV-INVOICE-NUMBER)
           END-EXEC.
      *
           PERFORM 2100-WRITE-INVOICE-RECORD.
           ADD 1 TO CA-TOTAL-ORDERS.
           MOVE 'Type order details.  Then press Enter.'
               TO ORD-D-INSTR.
           MOVE 'Order posted.' TO ORD-D-MESSAGE.
           MOVE 'F3=Exit   F12=Cancel' TO ORD-D-FKEY.
           MOVE -1 TO ORD-L-CUSTNO.
           SET SEND-ERASE TO TRUE.
           PERFORM 1400-SEND-ORDER-MAP.
      *
       2100-WRITE-INVOICE-RECORD.
      *
           EXEC CICS
               WRITE FILE('INVOICE')
                     FROM(INVOICE-RECORD)
                     RIDFLD(INV-INVOICE-NUMBER)
           END-EXEC.
      *
       3000-SEND-TOTAL-LINE.
      *
           MOVE CA-TOTAL-ORDERS TO TL-TOTAL-ORDERS.
      *
           EXEC CICS
               SEND TEXT FROM(TOTAL-LINE)
                         ERASE
                         FREEKB
           END-EXEC.
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
