CREATE TABLE ANK_KANRIHYO_WK
(
    �Č��ԍ�                       CHAR(10) NOT NULL,
    ���ώ}��                       CHAR(2) NOT NULL,
    �[���h�c                       CHAR(16) NOT NULL,
    �_��ԍ�                       CHAR(9) NOT NULL,
    ���Ə��R�[�h                   CHAR(4) NOT NULL,
    �S���҃R�[�h                   CHAR(4) NOT NULL,
    �Č��󋵋敪                   CHAR(2) NOT NULL,
    �ڋq�R�[�h                     CHAR(6) NOT NULL,
    ����於                       VARCHAR2(60) NOT NULL,
    ���ϓ�                         CHAR(8) NOT NULL,
    �_���                         CHAR(8) NOT NULL,
    ����`�ԃR�[�h                 CHAR(2) NOT NULL,
    �_����z                       NUMBER(13,0) NOT NULL,
    �w�����z���v                   NUMBER(13,0) NOT NULL,
    �e���v                         NUMBER(13,0) NOT NULL,
    ���������                     NUMBER(10,8) NOT NULL,
    ���[�X����                     NUMBER(3,0) NOT NULL,
    ������_����                    VARCHAR2(40) NOT NULL,
    �����\���                     CHAR(8) NOT NULL,
    CONSTRAINT SYS_C0021962 PRIMARY KEY (�Č��ԍ�, ���ώ}��, �[���h�c, ���Ə��R�[�h) USING INDEX
)
/
