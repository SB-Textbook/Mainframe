DROP TABLE APR_SYOHIN_MST;
CREATE TABLE APR_SYOHIN_MST
(
    �A�|�����i�R�[�h               CHAR(4) NOT NULL,
    �A�|�����i���ޖ�               VARCHAR2(20) NOT NULL,
    �������Q����                   VARCHAR2(40) NOT NULL,
    ������                         VARCHAR2(20) NOT NULL,
    �@�햼                         VARCHAR2(20) NOT NULL,
    ���Y�R�[�h                     CHAR(7) NOT NULL,
    �ϗp�N��                       CHAR(2) NOT NULL,
    �ی�����                       NUMBER(5,3) NOT NULL,
    �����ی��R�[�h                 CHAR(4) NOT NULL,
    �M�p�ی��R�[�h�Q���[�X         CHAR(6) NOT NULL,
    �M�p�ی��R�[�h�Q����           CHAR(6) NOT NULL,
    �o�^��                         CHAR(8) NOT NULL,
    �o�^����                       CHAR(6) NOT NULL,
    �o�^�S���҃R�[�h               CHAR(4) NOT NULL,
    �X�V��                         CHAR(8) NOT NULL,
    �X�V����                       CHAR(6) NOT NULL,
    �X�V�S���҃R�[�h               CHAR(4) NOT NULL,
    CONSTRAINT PK_APR_SYOHIN_MST PRIMARY KEY (�A�|�����i�R�[�h) USING INDEX
)
/
