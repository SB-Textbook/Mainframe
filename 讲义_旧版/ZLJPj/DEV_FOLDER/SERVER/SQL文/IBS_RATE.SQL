CREATE TABLE IBS_RATE
(
    �N                             CHAR(4) DEFAULT '0000' NOT NULL,
    ��                             CHAR(2) DEFAULT '00' NOT NULL,
    ����R�[�h                     CHAR(3) DEFAULT ' ' NOT NULL,
    �s�s�r                         NUMBER(6,2) DEFAULT 0 NOT NULL,
    �s�s�a                         NUMBER(6,2) DEFAULT 0 NOT NULL,
    �s�s�l                         NUMBER(6,2) DEFAULT 0 NOT NULL,
    �o�^��                         CHAR(8) DEFAULT '00000000' NOT NULL,
    �o�^����                       CHAR(6) DEFAULT '000000' NOT NULL,
    �o�^�S���҃R�[�h               CHAR(4) DEFAULT '0000' NOT NULL,
    �X�V��                         CHAR(8) DEFAULT '00000000' NOT NULL,
    �X�V����                       CHAR(6) DEFAULT '000000' NOT NULL,
    �X�V�S���҃R�[�h               CHAR(4) DEFAULT '0000' NOT NULL,
    CONSTRAINT SYS_C0023813 PRIMARY KEY (�N, ��, ����R�[�h) USING INDEX,
    CONSTRAINT SYS_C0029031 FOREIGN KEY (����R�[�h) REFERENCES IBS_CURRENCY (����R�[�h) ON DELETE CASCADE
)
/
