CREATE TABLE KTK_WK_TENKAI
(
    �_��ԍ�                       CHAR(9) NOT NULL,
    �f�[�^�敪                     CHAR(1) NOT NULL,
    �W�J�ԍ�                       NUMBER(3,0) NOT NULL,
    ���z                           NUMBER(13,0) DEFAULT 0 NOT NULL,
    ��                           NUMBER(3,0) DEFAULT 0 NOT NULL,
    ����                           NUMBER(10,8) DEFAULT 0 NOT NULL,
    �Г�����                       NUMBER(10,8) DEFAULT 0 NOT NULL,
    ��������Q���{                 CHAR(1) DEFAULT ' ' NOT NULL,
    ��������Q����                 CHAR(1) DEFAULT ' ' NOT NULL,
    �o�^��                         CHAR(8) DEFAULT ' ' NOT NULL,
    �o�^����                       CHAR(6) DEFAULT ' ' NOT NULL,
    �o�^�S���҃R�[�h               CHAR(4) DEFAULT ' ' NOT NULL,
    �X�V��                         CHAR(8) DEFAULT ' ' NOT NULL,
    �X�V����                       CHAR(6) DEFAULT ' ' NOT NULL,
    �X�V�S���҃R�[�h               CHAR(4) DEFAULT ' ' NOT NULL,
    CONSTRAINT PK_KTK_WK_TENKAI PRIMARY KEY (�_��ԍ�, �f�[�^�敪, �W�J�ԍ�) USING INDEX
)
/
