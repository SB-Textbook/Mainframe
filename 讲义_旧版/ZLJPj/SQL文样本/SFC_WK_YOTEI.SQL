CREATE TABLE SFC_WK_YOTEI
(
    �[���ԍ�                       VARCHAR2(16) NOT NULL,
    �_��ԍ�                       CHAR(7) NOT NULL,
    ���[�U�[�R�[�h                 CHAR(8) NOT NULL,
    ����於                       VARCHAR2(60) NOT NULL,
    �_���                         CHAR(8) NOT NULL,
    �_����z                       NUMBER(13,0) NOT NULL,
    �������                     CHAR(2) NOT NULL,
    �x����                         NUMBER(6,0) NOT NULL,
    ���[�X��                       NUMBER(13,0) NOT NULL,
    CONSTRAINT SYS_C0028575 PRIMARY KEY (�[���ԍ�, �_��ԍ�, �x����) USING INDEX
)
/
