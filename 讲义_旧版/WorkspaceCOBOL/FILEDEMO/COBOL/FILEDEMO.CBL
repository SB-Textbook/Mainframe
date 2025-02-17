000010 IDENTIFICATION DIVISION.
000020 PROGRAM-ID. FILEDEMO.
000030*
000040 ENVIRONMENT DIVISION.
000050 INPUT-OUTPUT SECTION.
000060 FILE-CONTROL.
000070     SELECT DISK-FILE ASSIGN TO OUT01
           ORGANIZATION IS       INDEXED
           ACCESS MODE IS RANDOM
           RECORD KEY KEY-WORD
000071     FILE STATUS  SYS-FILE-STATUS.
000080*
000090 DATA DIVISION.
000100 FILE SECTION.
000110 FD DISK-FILE.
000120
000130 01 FILE-REC.
           COPY FILEREC.
000191 WORKING-STORAGE SECTION.
000192 01 SYS-FILE-STATUS PIC X(2) VALUE "00".
000200*
000210 PROCEDURE DIVISION.
000220*****
000230* 1 *
000240*****
000250 MAIN-PROCESS.
000260     OPEN OUTPUT DISK-FILE.
000270*
000280     PERFORM EXECUTE-INIT THRU EXEXUTE-EXIT
000290              2 TIMES.
000300*
000310     CLOSE DISK-FILE.
           DISPLAY "SYS-FILE-STATUS=" , SYS-FILE-STATUS.
           STOP 1.
000320     STOP RUN.
000330*****
000340* 2 *
000350*****
000360 EXECUTE-INIT.
000370     DISPLAY "INPUT KEY-WORD"
000380     ACCEPT  KEY-WORD.
000390     DISPLAY "INPUT WORD1".
000400     ACCEPT  WORD1.
000490     WRITE FILE-REC.
           DISPLAY "SYS-FILE-STATUS=" , SYS-FILE-STATUS.
000500 EXEXUTE-EXIT.
000510     EXIT.
