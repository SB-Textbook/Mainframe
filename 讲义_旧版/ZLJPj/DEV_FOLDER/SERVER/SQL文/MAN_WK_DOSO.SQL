CREATE TABLE MAN_WK_DOSO
(
    �[���ԍ�                       VARCHAR2(16) NOT NULL,
    �����敪                       CHAR(1) NOT NULL,
    �C���敪                       CHAR(1) NOT NULL,
    ������R�[�h                   CHAR(8) NOT NULL,
    �Ώێ��Y�R�[�h                 CHAR(7) NOT NULL,
    �t�ۗ��P                       NUMBER(2,0) NOT NULL,
    �t�ۗ��Q                       NUMBER(2,0) NOT NULL,
    �t�ۗ��R                       NUMBER(2,0) NOT NULL,
    �t�ۗ��S                       NUMBER(2,0) NOT NULL,
    �t�ۗ��T                       NUMBER(2,0) NOT NULL,
    �t�ۗ��U                       NUMBER(2,0) NOT NULL,
    �t�ۗ��V                       NUMBER(2,0) NOT NULL,
    �t�ۗ��W                       NUMBER(2,0) NOT NULL,
    �t�ۗ��X                       NUMBER(2,0) NOT NULL,
    CONSTRAINT P_MAN_WK_DOSO PRIMARY KEY (�[���ԍ�, �����敪, �C���敪, ������R�[�h, �Ώێ��Y�R�[�h) USING INDEX
)
/
