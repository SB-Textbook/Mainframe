CREATE TABLE CPM_CPMMST
(
    CTLNUM                         CHAR(6) NOT NULL,
    CLTCOD                         CHAR(7) NOT NULL,
    CLTNAM                         VARCHAR2(40) NOT NULL,
    REFNUM                         CHAR(10),
    BILNUM                         CHAR(7),
    CNTDAY                         CHAR(8) NOT NULL,
    BORDAY                         CHAR(8) NOT NULL,
    DUEDAY                         CHAR(8) NOT NULL,
    HLDTYP                         CHAR(1) NOT NULL,
    BORTYP                         CHAR(1) NOT NULL,
    TRMTYP                         CHAR(1) NOT NULL,
    FIXFLT                         CHAR(1) NOT NULL,
    BEFAFT                         CHAR(1) NOT NULL,
    YERDAY                         CHAR(1) NOT NULL,
    DAYBAS                         CHAR(1) NOT NULL,
    FRATYP                         CHAR(1) NOT NULL,
    SALTYP                         CHAR(1) NOT NULL,
    OBJTYP                         CHAR(1) NOT NULL,
    ICGTYP                         CHAR(1) NOT NULL,
    HOLSFT                         CHAR(1) NOT NULL,
    DUECAL                         CHAR(1) NOT NULL,
    MTGTYP                         CHAR(1) NOT NULL,
    CPYDAY                         CHAR(2),
    ICGDAY                         CHAR(8),
    IPYDAY                         CHAR(8),
    FSTPAY                         CHAR(8),
    IPYCYC                         CHAR(2),
    CPYCYC                         CHAR(2),
    GAPTYP                         CHAR(1),
    REMARK                         VARCHAR2(40),
    CREDEP                         CHAR(1),
    CRENUM                         CHAR(7),
    DEBBNK                         CHAR(4),
    DEBBRC                         CHAR(3),
    DEBDEP                         CHAR(1),
    DEBNUM                         CHAR(7),
    DAYCNT                         NUMBER(4,0) NOT NULL,
    BORCAP                         NUMBER(13,0) NOT NULL,
    INTRAT                         NUMBER(8,6) NOT NULL,
    INTRST                         NUMBER(13,0) NOT NULL,
    ADDDAY                         CHAR(8),
    ADDTIM                         CHAR(6),
    ADDPSN                         CHAR(4),
    MODDAY                         CHAR(8),
    MODTIM                         CHAR(6),
    MODPSN                         CHAR(4)
)
/
CREATE UNIQUE INDEX CPM_CPMMST
ON CPM_CPMMST
(CTLNUM)
/
