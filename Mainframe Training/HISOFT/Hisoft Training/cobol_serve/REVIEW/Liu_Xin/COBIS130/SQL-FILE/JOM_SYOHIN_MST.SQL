DROP TABLE JOM_SYOHIN_MST;
CREATE TABLE JOM_SYOHIN_MST
(
    �W�������i�R�[�h               CHAR(4) NOT NULL,
    �W�������i���ޖ�               VARCHAR2(30) NOT NULL,
    �������Q����                   VARCHAR2(40) NOT NULL,
    ������                         VARCHAR2(20) NOT NULL,
    �@�햼                         VARCHAR2(20) NOT NULL,
    ���Y�R�[�h                     CHAR(7) NOT NULL,
    �ϗp�N��                       CHAR(2) NOT NULL,
    �ŋ敪                         CHAR(1) NOT NULL,
    �Œ莑�Y�ŗ�                   NUMBER(3,1) NOT NULL,
    �ی�����                       NUMBER(5,3) NOT NULL,
    �����ی��R�[�h                 CHAR(4) NOT NULL,
    �M�p�ی��R�[�h�Q���[�X         CHAR(6) NOT NULL,
    �M�p�ی��R�[�h�Q����           CHAR(6) NOT NULL,
    CONSTRAINT PK_JOM_SYOHIN_MST PRIMARY KEY (�W�������i�R�[�h) USING INDEX
)
/
