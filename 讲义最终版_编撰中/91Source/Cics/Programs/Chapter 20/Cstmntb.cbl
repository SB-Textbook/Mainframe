       IDENTIFICATION DIVISION.
      *
       PROGRAM-ID.  CSTMNTB.
      *
       ENVIRONMENT DIVISION.
      *
       DATA DIVISION.
      *
       WORKING-STORAGE SECTION.
      *
       01  WORK-FIELDS.
      *
           05  RESPONSE-CODE                   PIC S9(08) COMP.
      *
       01  COMMUNICATION-AREA.
      *
           05  CA-CONTEXT-FLAG                 PIC X(01).
               88  PROCESS-KEY-MAP                        VALUE '1'.
               88  PROCESS-ADD-CUSTOMER                   VALUE '2'.
               88  PROCESS-CHANGE-CUSTOMER                VALUE '3'.
               88  PROCESS-DELETE-CUSTOMER                VALUE '4'.
           05  CA-ACTION-FLAG                  PIC X(01).
               88  ADD-REQUEST                            VALUE '1'.
               88  CHANGE-REQUEST                         VALUE '2'.
               88  DELETE-REQUEST                         VALUE '3'.
           05  CA-CUSTOMER-RECORD.
               10  CA-CUSTOMER-NUMBER          PIC X(06).
               10  CA-FIRST-NAME               PIC X(20).
               10  CA-LAST-NAME                PIC X(30).
               10  CA-ADDRESS                  PIC X(30).
               10  CA-CITY                     PIC X(20).
               10  CA-STATE                    PIC X(02).
               10  CA-ZIP-CODE                 PIC X(10).
           05  CA-SAVE-CUSTOMER-MASTER         PIC X(118).
           05  CA-RETURN-CONDITION             PIC X(01).
               88  PROCESS-OK                             VALUE '1'.
               88  PROCESS-ERROR                          VALUE '2'.
               88  PROCESS-SEVERE-ERROR                   VALUE '3'.
           05  CA-RETURN-MESSAGE               PIC X(79).
           05  CA-ERROR-PARAMETERS.
               10  CA-ERR-RESP                 PIC S9(08) COMP.
               10  CA-ERR-RESP2                PIC S9(08) COMP.
               10  CA-ERR-RSRCE                PIC X(08).
      *
       COPY CUSTMAS.
      *
       LINKAGE SECTION.
      *
       01  DFHCOMMAREA                         PIC X(334).
      *
       PROCEDURE DIVISION.
      *
       0000-PROCESS-CUSTOMER-RECORD.
      *
           IF EIBCALEN NOT = LENGTH OF DFHCOMMAREA
               SET PROCESS-SEVERE-ERROR TO TRUE
               PERFORM 9000-SET-ERROR-INFO
           ELSE
               MOVE DFHCOMMAREA TO COMMUNICATION-AREA
               EVALUATE TRUE
                   WHEN PROCESS-KEY-MAP
                       PERFORM 1000-PROCESS-CUSTOMER-KEY
                   WHEN PROCESS-ADD-CUSTOMER
                       PERFORM 2000-PROCESS-ADD-CUSTOMER
                   WHEN PROCESS-CHANGE-CUSTOMER
                       PERFORM 3000-PROCESS-CHANGE-CUSTOMER
                   WHEN PROCESS-DELETE-CUSTOMER
                       PERFORM 4000-PROCESS-DELETE-CUSTOMER
               END-EVALUATE
           END-IF.
      *
           MOVE COMMUNICATION-AREA TO DFHCOMMAREA.
           EXEC CICS
               RETURN
           END-EXEC.
      *
       1000-PROCESS-CUSTOMER-KEY.
      *
           PERFORM 1100-READ-CUSTOMER-RECORD.
           EVALUATE RESPONSE-CODE
               WHEN DFHRESP(NORMAL)
                   IF ADD-REQUEST
                       SET PROCESS-ERROR TO TRUE
                       MOVE 'That customer already exists.' TO
                           CA-RETURN-MESSAGE
                   ELSE
                       SET PROCESS-OK TO TRUE
                       MOVE CUSTOMER-MASTER-RECORD TO CA-CUSTOMER-RECORD
                       MOVE CUSTOMER-MASTER-RECORD TO
                           CA-SAVE-CUSTOMER-MASTER
                       MOVE SPACE TO CA-RETURN-MESSAGE
                   END-IF
               WHEN DFHRESP(NOTFND)
                   IF ADD-REQUEST
                       SET PROCESS-OK TO TRUE
                   ELSE
                       SET PROCESS-ERROR TO TRUE
                       MOVE 'That customer does not exist.' TO
                           CA-RETURN-MESSAGE
                   END-IF
               WHEN OTHER
                   SET PROCESS-SEVERE-ERROR TO TRUE
                   PERFORM 9000-SET-ERROR-INFO
           END-EVALUATE.
      *
       1100-READ-CUSTOMER-RECORD.
      *
           EXEC CICS
               READ FILE('CUSTMAS')
                    INTO(CUSTOMER-MASTER-RECORD)
                    RIDFLD(CA-CUSTOMER-NUMBER)
                    RESP(RESPONSE-CODE)
           END-EXEC.
      *
       2000-PROCESS-ADD-CUSTOMER.
      *
           MOVE CA-CUSTOMER-RECORD TO CUSTOMER-MASTER-RECORD.
           PERFORM 2100-WRITE-CUSTOMER-RECORD.
           EVALUATE RESPONSE-CODE
               WHEN DFHRESP(NORMAL)
                   SET PROCESS-OK TO TRUE
                   MOVE 'Customer record added.' TO CA-RETURN-MESSAGE
               WHEN DFHRESP(DUPREC)
                   SET PROCESS-ERROR TO TRUE
                   MOVE 'Another user has added a record with that custo
      -                 'mer number.' TO CA-RETURN-MESSAGE
               WHEN OTHER
                   SET PROCESS-SEVERE-ERROR TO TRUE
                   PERFORM 9000-SET-ERROR-INFO
           END-EVALUATE.
      *
       2100-WRITE-CUSTOMER-RECORD.
      *
           EXEC CICS
               WRITE FILE('CUSTMAS')
                     FROM(CUSTOMER-MASTER-RECORD)
                     RIDFLD(CM-CUSTOMER-NUMBER)
                     RESP(RESPONSE-CODE)
           END-EXEC.
      *
       3000-PROCESS-CHANGE-CUSTOMER.
      *
           PERFORM 3100-READ-CUSTOMER-FOR-UPDATE.
           EVALUATE RESPONSE-CODE
               WHEN DFHRESP(NORMAL)
                   IF CUSTOMER-MASTER-RECORD = CA-SAVE-CUSTOMER-MASTER
                       MOVE CA-CUSTOMER-RECORD TO
                           CUSTOMER-MASTER-RECORD
                       PERFORM 3200-REWRITE-CUSTOMER-RECORD
                       IF RESPONSE-CODE NOT = DFHRESP(NORMAL)
                           SET PROCESS-SEVERE-ERROR TO TRUE
                           PERFORM 9000-SET-ERROR-INFO
                       ELSE
                           SET PROCESS-OK TO TRUE
                           MOVE 'Customer record updated.' TO
                               CA-RETURN-MESSAGE
                       END-IF
                   ELSE
                       SET PROCESS-ERROR TO TRUE
                       MOVE 'Another user has updated the record. Try ag
      -                    'ain.' TO CA-RETURN-MESSAGE
                   END-IF
               WHEN DFHRESP(NOTFND)
                   SET PROCESS-ERROR TO TRUE
                   MOVE 'Another user has deleted the record.'
                       TO CA-RETURN-MESSAGE
               WHEN OTHER
                   SET PROCESS-SEVERE-ERROR TO TRUE
                   PERFORM 9000-SET-ERROR-INFO
           END-EVALUATE.
      *
       3100-READ-CUSTOMER-FOR-UPDATE.
      *
           EXEC CICS
               READ FILE('CUSTMAS')
                    INTO(CUSTOMER-MASTER-RECORD)
                    RIDFLD(CA-CUSTOMER-NUMBER)
                    UPDATE
                    RESP(RESPONSE-CODE)
           END-EXEC.
      *
       3200-REWRITE-CUSTOMER-RECORD.
      *
           EXEC CICS
               REWRITE FILE('CUSTMAS')
                       FROM(CUSTOMER-MASTER-RECORD)
                       RESP(RESPONSE-CODE)
           END-EXEC.
      *
       4000-PROCESS-DELETE-CUSTOMER.
      *
           PERFORM 3100-READ-CUSTOMER-FOR-UPDATE.
           EVALUATE RESPONSE-CODE
               WHEN DFHRESP(NORMAL)
                   IF CUSTOMER-MASTER-RECORD = CA-SAVE-CUSTOMER-MASTER
                       PERFORM 4100-DELETE-CUSTOMER-RECORD
                       IF RESPONSE-CODE NOT = DFHRESP(NORMAL)
                           SET PROCESS-SEVERE-ERROR TO TRUE
                           PERFORM 9000-SET-ERROR-INFO
                       ELSE
                           SET PROCESS-OK TO TRUE
                           MOVE 'Customer record deleted.' TO
                               CA-RETURN-MESSAGE
                       END-IF
                   ELSE
                       SET PROCESS-ERROR TO TRUE
                       MOVE 'Another user has updated the record.  Try a
      -                    'gain.' TO CA-RETURN-MESSAGE
                   END-IF
               WHEN DFHRESP(NOTFND)
                   SET PROCESS-ERROR TO TRUE
                   MOVE 'Another user has deleted the record.'
                       TO CA-RETURN-MESSAGE
               WHEN OTHER
                   SET PROCESS-SEVERE-ERROR TO TRUE
                   PERFORM 9000-SET-ERROR-INFO
           END-EVALUATE.
      *
       4100-DELETE-CUSTOMER-RECORD.
      *
           EXEC CICS
               DELETE FILE('CUSTMAS')
                      RESP(RESPONSE-CODE)
           END-EXEC.
      *
       9000-SET-ERROR-INFO.
      *
           MOVE EIBRESP  TO CA-ERR-RESP.
           MOVE EIBRESP2 TO CA-ERR-RESP2.
           MOVE EIBRSRCE TO CA-ERR-RSRCE.
