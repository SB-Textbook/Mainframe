CREATE TABLE KEI_LPWK_SEIKYUSYO_TEGATA
(
    �_��ԍ�                       CHAR(9) NOT NULL,
    �A��                           CHAR(3) NOT NULL,
    �[���ԍ�                       VARCHAR2(16) NOT NULL,
    ���[�X��                       NUMBER(13,0) NOT NULL,
    ��                           NUMBER(3,0) NOT NULL,
    ����Œ����敪                 CHAR(1) NOT NULL,
    ���菈���R�[�h                 CHAR(2) NOT NULL,
    �w�����z���v                   NUMBER(13,0) NOT NULL,
    �����ی������v                 NUMBER(13,0) NOT NULL,
    �_����z                       NUMBER(13,0) NOT NULL,
    ����ŗ�                       NUMBER(3,1) NOT NULL,
    �����敪�P                     CHAR(1) NOT NULL,
    �����敪�Q                     CHAR(1) NOT NULL,
    ��`����                       NUMBER(3,0) NOT NULL,
    CONSTRAINT SYS_C0025576 PRIMARY KEY (�_��ԍ�, �A��, �[���ԍ�) USING INDEX
)
/
