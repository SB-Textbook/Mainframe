CREATE TABLE KEI_LPWK_RINGI_MEISAI
(
    �_��ԍ�                       CHAR(9) NOT NULL,
    �����m�n                       CHAR(3) NOT NULL,
    �v�j�A��                       NUMBER(5,0) NOT NULL,
    �[���ԍ�                       VARCHAR2(16) NOT NULL,
    �w���掯�ʂm�n                 CHAR(1),
    ������_����                    VARCHAR2(40),
    �����Ǝ�                       VARCHAR2(60),
    ����                           NUMBER(4,0),
    �w�����z                       NUMBER(13,0),
    ���Y�R�[�h                     CHAR(7),
    �ϗp�N��                       NUMBER(2,0),
    �M�p�ی��R�[�h                 CHAR(6),
    �c���z                         NUMBER(13,0),
    �c���ۏؐ於                   VARCHAR2(60),
    �ݒu�ꏊ��_����                VARCHAR2(40),
    �ݒu�ꏊ�Z��                   VARCHAR2(100),
    ���Y�}�X�^���Y��               VARCHAR2(30),
    �w���於                       VARCHAR2(60),
    ����於                       VARCHAR2(60),
    �_���                         CHAR(8),
    CONSTRAINT SYS_C0025557 PRIMARY KEY (�_��ԍ�, �����m�n, �v�j�A��, �[���ԍ�) USING INDEX
)
/
