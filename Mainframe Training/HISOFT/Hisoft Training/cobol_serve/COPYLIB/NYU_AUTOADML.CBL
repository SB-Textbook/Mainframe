000010************************************************
000020* (NYU_AUTOADML)
000030************************************************
000040 01  ()JOBTYP           PIC  X(4).
000050 01  ()REGTIM           PIC  X(6).
000060 01  ()PAYNUM           PIC  X(8).
000070 01  ()PAYDAY           PIC  X(4).
000080 01  ()BNKCOD           PIC  X(4).
000090 01  ()BNKNAM           PIC  X(15).
000100 01  ()BRCCOD           PIC  X(3).
000110 01  ()BRCNAM           PIC  X(15).
000120 01  ()CSTNAM           PIC  X(30).
000130 01  ()DEPKND           PIC  X(1).
000140 01  ()DEPNUM           PIC  X(7).
000150 01  ()TRNAMT           PIC S9(10) COMP-3.
000160 01  ()PAYDAY_O       PIC  X(4).
000170 01  ()BNKCOD_O       PIC  X(4).
000180 01  ()BNKNAM_O       PIC  X(15).
000190 01  ()BRCCOD_O       PIC  X(3).
000200 01  ()BRCNAM_O       PIC  X(15).
000210 01  ()CSTNAM_O       PIC  X(30).
000220 01  ()DEPKND_O       PIC  X(1).
000230 01  ()DEPNUM_O       PIC  X(7).
000240 01  ()TRNAMT_O       PIC S9(10) COMP-3.
000250 01  ()PAYDAY_M       PIC  X(1).
000260 01  ()BNKCOD_M       PIC  X(1).
000270 01  ()BNKNAM_M       PIC  X(1).
000280 01  ()BRCCOD_M       PIC  X(1).
000290 01  ()BRCNAM_M       PIC  X(1).
000300 01  ()CSTNAM_M       PIC  X(1).
000310 01  ()DEPKND_M       PIC  X(1).
000320 01  ()DEPNUM_M       PIC  X(1).
000330 01  ()TRNAMT_M       PIC  X(1).
