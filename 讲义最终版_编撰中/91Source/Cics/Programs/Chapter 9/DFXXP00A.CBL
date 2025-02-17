       IDENTIFICATION DIVISION.
      *
       PROGRAM-ID.  DFXXP00A.
      *
       ENVIRONMENT DIVISION.
      *
       DATA DIVISION.
      *
       WORKING-STORAGE SECTION.
      *
       01  WORK-FIELDS.
      *
           05  PACKED-FIELD-1      PIC S9(07)V99  COMP-3.
           05  PACKED-FIELD-2      PIC S9(07)V99  COMP-3.
           05  ALPHA-FIELD-2       REDEFINES PACKED-FIELD-2
                                   PIC X(05).
      *
       01  I-O-AREA                PIC X(100).
      *
       01  START-UP-MESSAGE.
      *
           05  FILLER PIC X(30) VALUE 'ABEND TESTER                  '.
           05  FILLER PIC X(49) VALUE SPACE.
           05  FILLER PIC X(79) VALUE SPACE.
           05  FILLER PIC X(30) VALUE 'Press a PF key to force one of'.
           05  FILLER PIC X(49) VALUE ' the following abends:'.
           05  FILLER PIC X(79) VALUE SPACE.
           05  FILLER PIC X(30) VALUE 'PF1 = ASRA (Data Exception)   '.
           05  FILLER PIC X(49) VALUE SPACE.
           05  FILLER PIC X(30) VALUE 'PF2 = ASRA (Decimal Divide Exc'.
           05  FILLER PIC X(49) VALUE 'eption)'.
           05  FILLER PIC X(30) VALUE 'PF3 = ASRA (Protection Excepti'.
           05  FILLER PIC X(49) VALUE 'on)'.
           05  FILLER PIC X(30) VALUE 'PF4 = ABM0 (Missing Map)      '.
           05  FILLER PIC X(49) VALUE SPACE.
           05  FILLER PIC X(30) VALUE 'PF5 = AEIO (PGMIDERR)         '.
           05  FILLER PIC X(49) VALUE SPACE.
           05  FILLER PIC X(30) VALUE 'PF6 = AEIL (DSIDERR)          '.
           05  FILLER PIC X(49) VALUE SPACE.
           05  FILLER PIC X(79) VALUE SPACE.
           05  FILLER PIC X(30) VALUE 'Or press Enter to exit without'.
           05  FILLER PIC X(49) VALUE ' abending.'.
      *
       01  TERMINATION-MESSAGE.
      *
           05  FILLER PIC X(09) VALUE 'Good Bye.'.
      *
       01  COMMUNICATION-AREA   PIC X(01).
      *
       COPY DFHAID.
      *
       LINKAGE SECTION.
      *
       01  DFHCOMMAREA             PIC X(01).
      *
       01  COMMON-WORK-AREA.
      *
           05  CWA-DATE            PIC 9(06).
      *
       PROCEDURE DIVISION.
      *
       0000-FORCE-USER-ABEND.
      *
           EVALUATE TRUE
               WHEN EIBCALEN = ZERO
                   EXEC CICS
                       SEND TEXT FROM(START-UP-MESSAGE)
                                 ERASE
                                 FREEKB
                   END-EXEC
               WHEN EIBAID = DFHPF1
                   MOVE SPACE TO ALPHA-FIELD-2
                   MOVE 100   TO PACKED-FIELD-1
                   MULTIPLY PACKED-FIELD-1 BY PACKED-FIELD-2
               WHEN EIBAID = DFHPF2
                   MOVE 100  TO PACKED-FIELD-1
                   MOVE ZERO TO PACKED-FIELD-2
                   DIVIDE PACKED-FIELD-2 INTO PACKED-FIELD-1
               WHEN EIBAID = DFHPF3
                   SET ADDRESS OF COMMON-WORK-AREA TO NULL
                   MOVE ZERO TO CWA-DATE
               WHEN EIBAID = DFHPF4
                   EXEC CICS
                       SEND MAP('NOMAP1')
                            MAPSET('NOSET1')
                            FROM(I-O-AREA)
                            ERASE
                   END-EXEC
               WHEN EIBAID = DFHPF5
                   EXEC CICS
                       XCTL PROGRAM('NOPGM1')
                   END-EXEC
               WHEN EIBAID = DFHPF6
                   EXEC CICS
                       READ DATASET('NOFILE')
                            INTO(I-O-AREA)
                            RIDFLD(ALPHA-FIELD-2)
                   END-EXEC
               WHEN EIBAID = DFHENTER OR DFHCLEAR
                   EXEC CICS
                       SEND TEXT FROM(TERMINATION-MESSAGE)
                                 ERASE
                                 FREEKB
                   END-EXEC
                   EXEC CICS
                       RETURN
                   END-EXEC
           END-EVALUATE.
           EXEC CICS
               RETURN TRANSID('DFXX')
                      COMMAREA(COMMUNICATION-AREA)
           END-EXEC.
