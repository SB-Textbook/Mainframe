CREATE TABLE EMC_WK_LIST
(
    �_��ԍ�                       CHAR(9) NOT NULL,
    �����R�[�h                     CHAR(2) NOT NULL,
    �����m�n                       CHAR(4) NOT NULL,
    ���񂹃R�[�h                   CHAR(8) NOT NULL,
    ���[�U�[�R�[�h                 CHAR(8) NOT NULL,
    ������R�[�h                   CHAR(8) NOT NULL,
    ��s�Z�k�R�[�h                 CHAR(2) NOT NULL,
    ��s�R�[�h                     CHAR(4) NOT NULL,
    �x�X�R�[�h                     CHAR(3) NOT NULL,
    ���̂P                         VARCHAR2(40) NOT NULL,
    ���̂Q                         VARCHAR2(40) NOT NULL,
    �ێ痿                         NUMBER(13,0) NOT NULL,
    ���t�@�����X�P                 CHAR(12) NOT NULL,
    ���t�@�����X�Q                 CHAR(12) NOT NULL,
    ���t�@�����X�R                 CHAR(12) NOT NULL,
    ���t�@�����X�S                 CHAR(12) NOT NULL,
    ���b�Z�[�W                     VARCHAR2(50) NOT NULL,
    CONSTRAINT SYS_C0022973 PRIMARY KEY (�_��ԍ�, �����R�[�h, �����m�n) USING INDEX
)
/
