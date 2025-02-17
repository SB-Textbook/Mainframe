DROP   TABLE  D07TNT_TBL   ;
CREATE TABLE  D07TNT_TBL  (
       担当者コード                       CHAR(8)           NOT NULL,
       担当者名称                         VARCHAR2(20)      NOT NULL,
       最新見積番号                       NUMBER(7,0)       NOT NULL,
       部課コード１                       CHAR(4)           NOT NULL,
       部課コード２                       CHAR(4)           NOT NULL,
       担当者表示区分                     CHAR(1)           NOT NULL,
       ランク                             NUMBER(2,0)       NOT NULL,
       パスワード                         CHAR(15)          NOT NULL,
       更新日時                           CHAR(16)          NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
       担当者カナ                         VARCHAR2(30)      NOT NULL,
       担当者ランク１                     NUMBER(2,0)       NOT NULL,
       担当者ランク２                     NUMBER(2,0)       NOT NULL,
       パスワード有効開始日               CHAR(8)           NOT NULL,
       代行入力者コード１                 CHAR(8)           NOT NULL,
       代行入力者コード２                 CHAR(8)           NOT NULL,
       代行入力者コード３                 CHAR(8)           NOT NULL,
       個人番号                           CHAR(7)           NOT NULL,
       連動用パスワード                   CHAR(15)          NOT NULL,
       担当者利用開始日                   CHAR(8)           NOT NULL,
       担当者利用終了日                   CHAR(8)           NOT NULL,
       権限レベル１                       CHAR(3)           NOT NULL,
       権限レベル２                       CHAR(3)           NOT NULL,
       権限レベル３                       CHAR(3)           NOT NULL,
       権限レベル４                       CHAR(3)           NOT NULL,
       権限レベル５                       CHAR(3)           NOT NULL,
       部課コード３                       CHAR(4)           NOT NULL,
       部課コード４                       CHAR(4)           NOT NULL,
       部課コード５                       CHAR(4)           NOT NULL,
       部課コード６                       CHAR(4)           NOT NULL,
       企業情報権限レベル                 CHAR(1)           NOT NULL,
       ＧＬＯＶＩＡ連動フラグ             CHAR(1)           NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
CONSTRAINT  PK_D07TNT_TBL  PRIMARY KEY (
       担当者コード));
