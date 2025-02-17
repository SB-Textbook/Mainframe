CREATE TABLE KEI_WK_YOTEI1
(
    契約番号                       CHAR(9) NOT NULL,
    端末番号                       VARCHAR2(16) NOT NULL,
    取引先都道府県名               CHAR(22),
    取引先住所１                   CHAR(40),
    取引先住所２                   CHAR(40),
    取引先名                       CHAR(60),
    東銀事業所名                   CHAR(20),
    東銀事業所住所                 CHAR(90),
    東銀担当者名                   CHAR(20),
    東銀事業所電話                 CHAR(15),
    CONSTRAINT SYS_C0025853 PRIMARY KEY (契約番号, 端末番号) USING INDEX
)
/
