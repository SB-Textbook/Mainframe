DROP   TABLE  D57NKF_TBL   ;
CREATE TABLE  D57NKF_TBL  (
       �����ʔ�                           CHAR(11)          NOT NULL,
       ���הԍ�                           NUMBER(3,0)       NOT NULL,
       �ؕ��ȖڃR�[�h                     CHAR(6)           NOT NULL,
       �ؕ����z                           NUMBER(13,0)      NOT NULL,
       �ؕ��ېŋ敪                       CHAR(3)           NOT NULL,
       �ؕ��q�d�e�m�n                     VARCHAR2(20)      NOT NULL,
       �ݕ��ȖڃR�[�h                     CHAR(6)           NOT NULL,
       �ݕ����z                           NUMBER(13,0)      NOT NULL,
       �ݕ��ېŋ敪                       CHAR(3)           NOT NULL,
       �ݕ��q�d�e�m�n                     VARCHAR2(20)      NOT NULL,
       ��������敪                       CHAR(1)           NOT NULL,
       �o�^�N����                         CHAR(8)           NOT NULL,
       �o�^����                           CHAR(8)           NOT NULL,
       �o�^�S����                         CHAR(8)           NOT NULL,
       �X�V�N����                         CHAR(8)           NOT NULL,
       �X�V����                           CHAR(8)           NOT NULL,
       �X�V��                             CHAR(8)           NOT NULL,
       ���͒S���҃R�[�h                   CHAR(8)           NOT NULL,
CONSTRAINT  PK_D57NKF_TBL  PRIMARY KEY (
       �����ʔ�,
       ���הԍ�));
