DROP   TABLE  D270MST_TBL   ;
CREATE TABLE  D270MST_TBL  (
       ���ϔԍ��Q�A��                     NUMBER(7,0)       NOT NULL,
       ���ϔԍ��}��                       NUMBER(2,0)       NOT NULL,
       �_����                           CHAR(3)           NOT NULL,
       �A��                               NUMBER(3,0)       NOT NULL,
       �����ԍ�                           NUMBER(3,0)       NOT NULL,
       ���ϔԍ��Q�S����                   CHAR(2)           NOT NULL,
       �X�V�N����                         CHAR(8)           NOT NULL,
       �X�V����                           CHAR(8)           NOT NULL,
       �X�V��                             CHAR(8)           NOT NULL,
       ���͒S���҃R�[�h                   CHAR(8)           NOT NULL,
       ����N����                         CHAR(8)           NOT NULL,
       ����z                             NUMBER(13,0)      NOT NULL,
       ����z�����                       NUMBER(13,0)      NOT NULL,
       �o�^�N����                         CHAR(8)           NOT NULL,
       �o�^����                           CHAR(8)           NOT NULL,
       �o�^�S����                         CHAR(8)           NOT NULL,
CONSTRAINT  PK_D270MST_TBL  PRIMARY KEY (
       ���ϔԍ��Q�A��,
       ���ϔԍ��}��,
       �_����,
       �A��));
