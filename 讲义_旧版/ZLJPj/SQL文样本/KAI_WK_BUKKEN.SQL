CREATE TABLE KAI_WK_BUKKEN
(
    �_��ԍ�                       CHAR(9) NOT NULL,
    �����ԍ�                       CHAR(3) NOT NULL,
    �ݒu�ꏊ��                     CHAR(40),
    ������                         CHAR(40),
    �����������@                   CHAR(50) NOT NULL,
    ���[�X��                       NUMBER(13,0) NOT NULL,
    ���[�X�������                 NUMBER(13,0) NOT NULL,
    �O�����[�X��                   NUMBER(13,0) NOT NULL,
    �O�������                     NUMBER(13,0) NOT NULL,
    �������z                       NUMBER(13,0) NOT NULL,
    ���������                     NUMBER(13,0) NOT NULL,
    ����                           VARCHAR2(600) NOT NULL,
    �A��                           NUMBER(3,0) NOT NULL,
    ���]�敪                       CHAR(1) NOT NULL,
    CONSTRAINT P_KAI_BUKKEN PRIMARY KEY (�_��ԍ�, �����ԍ�, �A��) USING INDEX
)
/
