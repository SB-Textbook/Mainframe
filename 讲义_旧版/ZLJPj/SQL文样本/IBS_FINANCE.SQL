CREATE TABLE IBS_FINANCE
(
    �_��m�n                         CHAR(9) DEFAULT ' ' NOT NULL,
    �A��                           NUMBER(3,0) DEFAULT 0 NOT NULL,
    �v�Z��                         CHAR(8) DEFAULT '00000000' NOT NULL,
    ����                           NUMBER(4,0) DEFAULT 0 NOT NULL,
    �����                         CHAR(8) DEFAULT '00000000' NOT NULL,
    �s�s�l                         NUMBER(6,2) DEFAULT 0 NOT NULL,
    ���B����                       NUMBER(12,8) DEFAULT 0 NOT NULL,
    �^�p����                       NUMBER(12,8) DEFAULT 0 NOT NULL,
    ���{����                       NUMBER(16,2) DEFAULT 0 NOT NULL,
    ����                           NUMBER(16,2) DEFAULT 0 NOT NULL,
    ���̑�                         NUMBER(16,2) DEFAULT 0 NOT NULL,
    ����z                         NUMBER(16,2) DEFAULT 0 NOT NULL,
    ���{�c��                       NUMBER(16,2) DEFAULT 0 NOT NULL,
    ���������v                     NUMBER(16,2) DEFAULT 0 NOT NULL,
    ���������v���z�݌v             NUMBER(16,2) DEFAULT 0 NOT NULL,
    ���l                           VARCHAR2(20) DEFAULT ' ' NOT NULL,
    �o�^��                         CHAR(8) DEFAULT '00000000' NOT NULL,
    �o�^����                       CHAR(6) DEFAULT '000000' NOT NULL,
    �o�^�S���҃R�[�h               CHAR(4) DEFAULT '0000' NOT NULL,
    �X�V��                         CHAR(8) DEFAULT '00000000' NOT NULL,
    �X�V����                       CHAR(6) DEFAULT '000000' NOT NULL,
    �X�V�S���҃R�[�h               CHAR(4) DEFAULT '0000' NOT NULL,
    CONSTRAINT PKEY_IBS_FINANCE PRIMARY KEY (�_��m�n, �A��) USING INDEX
)
/
