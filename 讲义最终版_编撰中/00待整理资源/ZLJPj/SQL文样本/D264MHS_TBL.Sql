DROP   TABLE  D264MHS_TBL   ;
CREATE TABLE  D264MHS_TBL  (
       ���ϔԍ��Q�A��                     NUMBER(7,0)       NOT NULL,
       ���ϔԍ��}��                       NUMBER(2,0)       NOT NULL,
       ��p���                           CHAR(3)           NOT NULL,
       �J������                           NUMBER(3,0)       NOT NULL,
       ��p�敪                           CHAR(1)           NOT NULL,
       ��p���z                           NUMBER(13,0)      NOT NULL,
       ����x���\��N��                   CHAR(6)           NOT NULL,
       �x���Ԋu                           NUMBER(2,0)       NOT NULL,
       �x����                           NUMBER(3,0)       NOT NULL,
       �X�V�N����                         CHAR(8)           NOT NULL,
       �X�V����                           CHAR(8)           NOT NULL,
       �X�V��                             CHAR(8)           NOT NULL,
       ���͒S���҃R�[�h                   CHAR(8)           NOT NULL,
       �o�^�N����                         CHAR(8)           NOT NULL,
       �o�^����                           CHAR(8)           NOT NULL,
       �o�^�S����                         CHAR(8)           NOT NULL,
CONSTRAINT  PK_D264MHS_TBL  PRIMARY KEY (
       ���ϔԍ��Q�A��,
       ���ϔԍ��}��,
       ��p���,
       �J������));
