DROP   TABLE  IKOTBL002   ;
CREATE TABLE  IKOTBL002  (
       �_��m�n                           CHAR(9)           NOT NULL,
       �ă��[�X�R�[�h                     NUMBER(1,0)       NOT NULL,
       �������菈���R�[�h               NUMBER(2,0)       NOT NULL,
       �������菈���R�[�h               NUMBER(2,0)       NOT NULL,
       �ă��[�X��                       NUMBER(2,0)       NOT NULL,
       �����菈���R�[�h                 NUMBER(2,0)       NOT NULL,
       �����菈���R�[�h                 NUMBER(2,0)       NOT NULL,
       �_����                           CHAR(3)           NOT NULL,
       ��_��敪                         CHAR(1)           NOT NULL,
       ����菇                           CHAR(1)           NOT NULL,
CONSTRAINT  PK_IKOTBL002  PRIMARY KEY (
       �_��m�n,
       �ă��[�X�R�[�h,
       �������菈���R�[�h,
       �������菈���R�[�h));

COMMENT ON TABLE IKOTBL002 IS '�_���ޓ��ϊ��e�[�u��';
