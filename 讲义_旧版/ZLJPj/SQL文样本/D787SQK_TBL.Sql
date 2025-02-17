DROP   TABLE  D787SQK_TBL   ;
CREATE TABLE  D787SQK_TBL  (
       取引先コード                       CHAR(9)           NOT NULL,
       請求先コード                       CHAR(5)           NOT NULL,
       変更年月日                         CHAR(8)           NOT NULL,
       請求先名称                         VARCHAR2(80)      NOT NULL,
       部門名称                           VARCHAR2(60)      NOT NULL,
       担当者名称                         VARCHAR2(20)      NOT NULL,
       振込人名                           CHAR(40)          NOT NULL,
       郵便番号                           CHAR(7)           NOT NULL,
       住所１                             VARCHAR2(60)      NOT NULL,
       住所２                             VARCHAR2(60)      NOT NULL,
       住所３                             VARCHAR2(60)      NOT NULL,
       電話番号                           CHAR(15)          NOT NULL,
       請求書作成区分                     CHAR(1)           NOT NULL,
       請求指定様式区分                   CHAR(1)           NOT NULL,
       送付区分                           CHAR(1)           NOT NULL,
       口振銀行コード                     CHAR(4)           NOT NULL,
       口振支店コード                     CHAR(3)           NOT NULL,
       口振口座種類                       CHAR(1)           NOT NULL,
       口振口座番号                       CHAR(10)          NOT NULL,
       口振名義人                         CHAR(30)          NOT NULL,
       口振ご案内書作成区分               CHAR(1)           NOT NULL,
       振替銀行コード                     CHAR(4)           NOT NULL,
       自振引落日                         CHAR(2)           NOT NULL,
       受取側口座コード                   CHAR(2)           NOT NULL,
       口座引落依頼書受領日               CHAR(8)           NOT NULL,
       口座引落開始日                     CHAR(8)           NOT NULL,
       事務管受領日                       CHAR(8)           NOT NULL,
       口振開始適用日                     CHAR(8)           NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
CONSTRAINT  PK_D787SQK_TBL  PRIMARY KEY (
       取引先コード,
       請求先コード,
       変更年月日));
