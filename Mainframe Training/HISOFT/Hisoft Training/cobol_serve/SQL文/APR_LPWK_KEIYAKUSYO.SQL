CREATE TABLE APR_LPWK_KEIYAKUSYO
(
    �[���ԍ�                       VARCHAR2(16) NOT NULL,
    ���[�X�����敪                 CHAR(1) NOT NULL,
    �J�n�A�|���_��ԍ�             CHAR(7) NOT NULL,
    �y�[�W�敪                     NUMBER(1,0) NOT NULL,
    ���R�[�h�敪                   NUMBER(1,0) NOT NULL,
    �\����                         CHAR(8) NOT NULL,
    ������                         CHAR(8) NOT NULL,
    �I���A�|���_��ԍ�             CHAR(7) NOT NULL,
    ������                         VARCHAR2(20) NOT NULL,
    ���[�X����                     NUMBER(3,0) NOT NULL,
    �w�����z                       NUMBER(13,0) NOT NULL,
    ���[�X�����z                   NUMBER(13,0) NOT NULL,
    ����Ŋz                       NUMBER(11,0) NOT NULL,
    ���v�z                         NUMBER(13,0) NOT NULL,
    CONSTRAINT SYS_C0022455 PRIMARY KEY (�[���ԍ�, ���[�X�����敪, �J�n�A�|���_��ԍ�) USING INDEX
)
/
