CREATE TABLE KEI_BKDATE_KEY
(
    契約番号                       CHAR(9) NOT NULL,
    作成日                         CHAR(8) NOT NULL,
    作成時刻                       CHAR(6) NOT NULL,
    作成担当者コード               CHAR(4) NOT NULL,
    CONSTRAINT SYS_C0024999 PRIMARY KEY (契約番号) USING INDEX
)
/
