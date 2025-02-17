000100*****************************************************************
000200 IDENTIFICATION                  DIVISION.
000300*****************************************************************
000400 PROGRAM-ID.                     TR232.
000500*****************************************************************
000600 ENVIRONMENT                     DIVISION.
000700*****************************************************************
000800*****************************************************************
000900 DATA                            DIVISION.
001000*****************************************************************
001100*----------------------------------------------------------------
001200 WORKING-STORAGE                 SECTION.
001300*----------------------------------------------------------------
001400*
001500 01  WK-AREA.
001600     03  WK-SIG                  PIC 9.
001700 77  TRANSID                     PIC X(5)  VALUE 'TR232'.
001800*---------------   COPY BOOK   ----------------------------------
001900     COPY DFHAID.
002000     COPY TR232SE.
002100*----------------------------------------------------------------
002200 LINKAGE                         SECTION.
002300*----------------------------------------------------------------
002400 01  DFHCOMMAREA.
002500     10  FILLER                  PIC X OCCURS 0 TO 32700
002600                                      DEPENDING ON EIBCALEN.
002700****************************************************************
002800 PROCEDURE                       DIVISION.
002900****************************************************************
003000*-----------------------------------------------------------------
003100*@ S0000-MAIN
003200*-----------------------------------------------------------------
003300 S0000-MAIN-RTN.
003400
003800     IF EIBCALEN = 0
003910        INITIALIZE       WK-AREA
003920                         TR232MAI
003930                         TR232MAO
003940        PERFORM S3200-SEND-RTN
003950           THRU S3200-SEND-EXT
003960      END-IF.
003970
004000     PERFORM S3100-RECEIVE-RTN
004100        THRU S3100-RECEIVE-EXT.
004300        MOVE T01-MI         TO T02-MO.
004500
004600     PERFORM S3200-SEND-RTN
004700        THRU S3200-SEND-EXT.
004800
004900
005000     STOP RUN.
005100
005200 S0000-MAIN-EXT.
005300     EXIT.
005400
008400*-----------------------------------------------------------------
008500*@ S3100
008600*-----------------------------------------------------------------
008700 S3100-RECEIVE-RTN.
008710*
008800*
009000*    MOVE  'TTTTTTTTT1'    TO   T01-MO.
009001*    MOVE  'TTTTTTTTT2'    TO   T02-MO.
009010*    IF  IN-MI = 'AAAAAAAAAA'
009020*        MOVE  'AAAAAAAAA1'  TO  OUT-MO
009030*    ELSE
009040*        MOVE  'BBBBBBBBB2'  TO  OUT-MO
009050*    END-IF.
009100     EXEC    CICS    RECEIVE     MAP('TR232MA')
009200                              MAPSET('TR232SE')
009300                                INTO(TR232MAI)
009400     END-EXEC.
009600
012300 S3100-RECEIVE-EXT.
012400     EXIT.
012500*-----------------------------------------------------------------
012600*@ S3200
012700*-----------------------------------------------------------------
012800 S3200-SEND-RTN.
012900
012920*  EXEC    CICS     ENTER  TRACEID(02) FROM(OUT-MI) END-EXEC.
012940
013000     EXEC    CICS    SEND        MAP('TR232MA')
013100                                 MAPSET('TR232SE')
013200                                 FROM(TR232MAO)
013300                                 ERASE
013400                                 FREEKB
013500                                 CURSOR
013600                                 ALARM
013700                                 FRSET
013800     END-EXEC.
013900*
014000     EXEC    CICS    RETURN  TRANSID(TRANSID)
014200                            COMMAREA(WK-AREA)
014300     END-EXEC.
014400 S3200-SEND-EXT.
014500     EXIT.
