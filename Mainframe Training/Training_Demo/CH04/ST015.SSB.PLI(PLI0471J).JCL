//ST015C JOB (TEST2),'ST015A',CLASS=A,MSGCLASS=A,MSGLEVEL=(1,1),
//        COND=(8,LT),NOTIFY=ST015
//*
//*            COMPILE THE PL/I PROGRAM IF THE PRECOMPILE
//*            RETURN CODE IS 4 OR LESS
//*
//*PLI     EXEC PGM=IEL0AA,PARM='LIST,OBJECT,NODECK,APOST'
//PPLI    EXEC PGM=IBMZPLI,
//             PARM='MACRO,NSYN,MDECK,NIS,NS'                  /* 02 *
//*            PARM='MACRO,NSYN,MDECK,NIS'
//STEPLIB   DD DSN=IEL330.SIBMZCMP,DISP=SHR
//SYSLIN    DD DUMMY
//SYSPRINT  DD SYSOUT=*
//SYSLIB    DD DSN=ST015.SSB.PLI,DISP=SHR
//*         DD DSN=&APPL1..R010T.&INCLIB1,DISP=SHR           <= ?
//*         DD DSN=PRDQ.LOCI.PLINCL,DISP=SHR
//*         DD DSN=PR.LOC.INC,DISP=SHR
//*         DD DSN=PR.INT.INC,DISP=SHR
//SYSPUNCH  DD DSN=&&DSNIN,DISP=(MOD,PASS),
//             UNIT=SYSDA,SPACE=(800,(100,100))
//SYSUT1    DD SPACE=(1024,(200,20),,CONTIG),UNIT=SYSDA,
//             DCB=BLKSIZE=1024
//SYSIN     DD DSN=ST015.SSB.PLI(PLI0471S),DISP=SHR
//PLI     EXEC PGM=IBMZPLI,
//*PARM='LANGLVL(OS,SPROG),S,OBJ,A,NOLIST,XREF,AG,OPT(2),ND,NOF,
//*            GS,NIS,NEST,LIST,OFFSET'
// PARM='OBJECT,OPTIONS,SOURCE,LIST,OFFSET,MACRO,XREF'
//STEPLIB  DD  DSN=IEL330.SIBMZCMP,DISP=SHR
//SYSIN    DD  DSN=&&DSNIN,DISP=(MOD,DELETE)
//*SYSLIB   DD  DISP=SHR,DSN=CICSTS.V2R2.CICS.SDFHPL1
//*         DD  DSN=GDDM.SADMSAM,DISP=SHR
//SYSLIB   DD  DSN=ST015.SSB.PLI,DISP=SHR
//SYSLIN   DD  DSN=&&LOADSET,DISP=(MOD,PASS),UNIT=SYSDA,
//             SPACE=(800,(500,500))
//SYSPRINT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSUT1   DD  SPACE=(800,(500,500),,,ROUND),UNIT=SYSDA
//SYSUT2   DD  SPACE=(800,(500,500),,,ROUND),UNIT=SYSDA
//SYSUT3   DD  SPACE=(800,(500,500),,,ROUND),UNIT=SYSDA
//SYSUT4   DD  SPACE=(800,(500,500),,,ROUND),UNIT=SYSDA
//*
//*            LINKEDIT IF THE COMPILE RETURN CODE IS 8 OR
//*            LESS AND PRECOMPILE RETURN CODE IS 4 OR LESS
//*
//LKED    EXEC PGM=IEWL,PARM='XREF,LIST,RENT',
//             COND=(8,LT,PLI)
//SYSLIB   DD  DISP=SHR,DSN=CEE.SCEELKED
//         DD  DSN=ST015.SSB.LOAD,DISP=SHR
//*        DD  DISP=SHR,DSN=DB2.V7R1M0.SDSNLOAD
//*        DD  DISP=SHR,DSN=IMS.V7R1M0.SDFSRESL
//*        DD  DISP=SHR,DSN=CICSTS.V2R2.CICS.SDFHLOAD
//*        DD  DISP=SHR,DSN=ISP.SISPLOAD
//*        DD  DISP=SHR,DSN=GDDM.SADMMOD
//SYSLIN   DD  DSN=&&LOADSET,DISP=(OLD,DELETE)
//*        DD  *
//SYSLMOD DD DSN=ST015.SSB.LOAD(PLI0471S),
//        DISP=SHR
//SYSPRINT DD  SYSOUT=*
//SYSUDUMP DD  SYSOUT=*
//SYSUT1   DD  SPACE=(1024,(50,50)),UNIT=SYSDA
//SYSIN    DD  *
  ENTRY CEESTART
  INCLUDE SYSLIB(DSNELI)
  INCLUDE SYSLMOD(READCM)
  INCLUDE SYSLMOD(PLI0471S)
  NAME   PLI0471S(R)
//*





