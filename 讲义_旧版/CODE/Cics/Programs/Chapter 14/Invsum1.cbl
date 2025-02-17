       IDENTIFICATION DIVISION.
      *
       PROGRAM-ID. INVSUM1.
      *
       ENVIRONMENT DIVISION.
      *
       DATA DIVISION.
      *
       WORKING-STORAGE SECTION.
      *
       01  SWITCHES.
      *
           05  INVOICE-EOF-SW          PIC X(01)    VALUE 'N'.
               88  INVOICE-EOF                      VALUE 'Y'.
           05  FIRST-RECORD-SW         PIC X(01)    VALUE 'Y'.
               88  FIRST-RECORD                     VALUE 'Y'.
      *
       01  WORK-FIELDS.
      *
           05  INVOICE-COUNT           PIC S9(05)    COMP-3  VALUE ZERO.
           05  INVOICE-TOTAL           PIC S9(07)V99 COMP-3  VALUE ZERO.
      *
       01  RESPONSE-CODE               PIC S9(08)    COMP.
      *
       COPY SUMSET1.
      *
       COPY INVOICE.
      *
       COPY ERRPARM.
      *
       PROCEDURE DIVISION.
      *
       0000-PREPARE-INVOICE-SUMMARY.
      *
           MOVE LOW-VALUE TO SUMMAP1O.
           PERFORM 1000-START-INVOICE-BROWSE.
           PERFORM 2000-READ-NEXT-INVOICE
               UNTIL INVOICE-EOF.
           PERFORM 3000-END-INVOICE-BROWSE.
           PERFORM 4000-SEND-SUMMARY-MAP.
      *
           EXEC CICS
               RETURN TRANSID('MENU')
           END-EXEC.
      *
       1000-START-INVOICE-BROWSE.
      *
           MOVE 0 TO INV-INVOICE-NUMBER
      *
           EXEC CICS
               STARTBR FILE('INVOICE')
                       RIDFLD(INV-INVOICE-NUMBER)
                       RESP(RESPONSE-CODE)
           END-EXEC.
      *
           IF RESPONSE-CODE = DFHRESP(NOTFND)
               MOVE 'Y' TO INVOICE-EOF-SW
           ELSE
               IF RESPONSE-CODE NOT = DFHRESP(NORMAL)
                   PERFORM 9999-TERMINATE-PROGRAM
               END-IF
           END-IF.
      *
       2000-READ-NEXT-INVOICE.
      *
           EXEC CICS
               READNEXT FILE('INVOICE')
                        INTO(INVOICE-RECORD)
                        RIDFLD(INV-INVOICE-NUMBER)
                        RESP(RESPONSE-CODE)
           END-EXEC.
      *
           EVALUATE RESPONSE-CODE
               WHEN DFHRESP(NORMAL)
                   MOVE INV-INVOICE-NUMBER TO LASTO
                   ADD 1 TO INVOICE-COUNT
                   ADD INV-INVOICE-TOTAL TO INVOICE-TOTAL
                   IF FIRST-RECORD
                       MOVE INV-INVOICE-NUMBER TO FIRSTO
                       MOVE 'N' TO FIRST-RECORD-SW
                   END-IF
               WHEN DFHRESP(ENDFILE)
                   MOVE 'Y' TO INVOICE-EOF-SW
               WHEN OTHER
                   PERFORM 9999-TERMINATE-PROGRAM
           END-EVALUATE.
      *
       3000-END-INVOICE-BROWSE.
      *
           EXEC CICS
               ENDBR FILE('INVOICE')
                     RESP(RESPONSE-CODE)
           END-EXEC.
      *
           IF RESPONSE-CODE NOT = DFHRESP(NORMAL)
               PERFORM 9999-TERMINATE-PROGRAM
           END-IF.
      *
       4000-SEND-SUMMARY-MAP.
      *
           MOVE 'SUM1'        TO TRANIDO.
           MOVE INVOICE-COUNT TO COUNTO.
           MOVE INVOICE-TOTAL TO TOTALO.
      *
           EXEC CICS
               SEND MAP('SUMMAP1')
                    MAPSET('SUMSET1')
                    FROM(SUMMAP1O)
                    ERASE
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
