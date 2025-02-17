CREATE TABLE EMC_WK_SEIKYU
(
    契約番号                       CHAR(10) NOT NULL,
    物件名                         CHAR(30) NOT NULL,
    検収日                         CHAR(8) NOT NULL,
    リース期間                     NUMBER(3,0) NOT NULL,
    充当回                         CHAR(3) NOT NULL,
    総支払回数                     CHAR(3) NOT NULL,
    当月リース料                   NUMBER(13,0) NOT NULL,
    消費税額                       NUMBER(11,0) NOT NULL,
    当社契約番号                   CHAR(10) NOT NULL,
    日付                           CHAR(4) NOT NULL,
    請求先コード                   CHAR(8) NOT NULL,
    請求コード                     CHAR(2) NOT NULL,
    入金日                         CHAR(2) NOT NULL,
    税率                           NUMBER(3,1) NOT NULL,
    ユーザーコード                 CHAR(8) NOT NULL,
    数量                           NUMBER(4,0) NOT NULL,
    ユーザーリファレンス２         CHAR(10) NOT NULL,
    ユーザーリファレンス３         CHAR(10) NOT NULL,
    ユーザーリファレンス４         CHAR(10) NOT NULL,
    郵便番号                       CHAR(7) NOT NULL,
    住所                           VARCHAR2(80) NOT NULL,
    取引先名                       VARCHAR2(40) NOT NULL,
    部署名                         VARCHAR2(40) NOT NULL,
    CONSTRAINT SYS_C0022997 PRIMARY KEY (契約番号) USING INDEX
)
/
