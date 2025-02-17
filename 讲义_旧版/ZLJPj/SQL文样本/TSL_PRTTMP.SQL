CREATE TABLE TSL_PRTTMP
(
    CNTNUM                         CHAR(9),
    PRFCOD                         CHAR(2),
    PRFNAM                         CHAR(6),
    BNKCOD                         CHAR(4),
    BNKNAM                         VARCHAR2(20),
    BRCNAM                         VARCHAR2(20),
    PROGRE                         CHAR(1),
    USRCOD                         CHAR(8),
    USRNAM                         VARCHAR2(30),
    BUYNAM                         VARCHAR2(30),
    OBJNAM                         VARCHAR2(40),
    CNTDAY                         CHAR(8),
    APRDAY                         CHAR(8),
    DUEDAY                         CHAR(8),
    BASDAY                         CHAR(8),
    INDCOD                         CHAR(2),
    INTTYP                         CHAR(1),
    RELEAS                         CHAR(1),
    DELFLG                         CHAR(1),
    MONCNT                         NUMBER(4,0) NOT NULL,
    OBJAMT                         NUMBER(13,0) NOT NULL,
    CNTAMT                         NUMBER(13,0) NOT NULL,
    LEAAMT                         NUMBER(13,0) NOT NULL,
    DEPAMT                         NUMBER(13,0) NOT NULL,
    INTRAT                         NUMBER(8,6) NOT NULL,
    ITMCNT                         NUMBER(4,0) NOT NULL,
    BRCCNT                         NUMBER(4,0) NOT NULL,
    BRCAGT                         NUMBER(4,0) NOT NULL,
    AGTCNT                         NUMBER(4,0) NOT NULL,
    SATPCT                         NUMBER(8,5) NOT NULL,
    ITMTOT                         NUMBER(4,0) NOT NULL,
    OBJTOT                         NUMBER(13,0) NOT NULL,
    CNTTOT                         NUMBER(13,0) NOT NULL,
    ITMPRP                         NUMBER(4,0) NOT NULL,
    OBJPRP                         NUMBER(13,0) NOT NULL,
    CNTPRP                         NUMBER(13,0) NOT NULL,
    ITMDEP                         NUMBER(4,0) NOT NULL,
    OBJDEP                         NUMBER(13,0) NOT NULL,
    CNTDEP                         NUMBER(13,0) NOT NULL
)
/
