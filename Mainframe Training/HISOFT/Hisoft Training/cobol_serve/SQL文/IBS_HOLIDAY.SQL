CREATE TABLE IBS_HOLIDAY
(
    �x���Q�N                       CHAR(4) DEFAULT '0000' NOT NULL,
    �x���Q��                       CHAR(2) DEFAULT '00' NOT NULL,
    �x���Q��                       CHAR(2) DEFAULT '00' NOT NULL,
    �s�s�R�[�h                     CHAR(3) DEFAULT ' ' NOT NULL,
    �o�^��                         CHAR(8) DEFAULT '00000000' NOT NULL,
    �o�^����                       CHAR(6) DEFAULT '000000' NOT NULL,
    �o�^�S���҃R�[�h               CHAR(4) DEFAULT '0000' NOT NULL,
    �X�V��                         CHAR(8) DEFAULT '00000000' NOT NULL,
    �X�V����                       CHAR(6) DEFAULT '000000' NOT NULL,
    �X�V�S���҃R�[�h               CHAR(4) DEFAULT '0000' NOT NULL,
    CONSTRAINT PKEY_IBS_HOLIDAY PRIMARY KEY (�x���Q�N, �x���Q��, �x���Q��, �s�s�R�[�h) USING INDEX
)
/
