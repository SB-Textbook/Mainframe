DROP   TABLE  HSNINBT   ;
CREATE TABLE  HSNINBT  (
       �_��ԍ�                           CHAR(9)           NOT NULL,
       �����m�n                           CHAR(3)           NOT NULL,
       �ړW�J��                           CHAR(6)           NOT NULL,
       �ڎx����                         CHAR(4)           NOT NULL,
       �ڎ����[�X��                       NUMBER(13,0)      NOT NULL,
       �ڗ���                             NUMBER(13,0)      NOT NULL,
       �ڌ��{������                       NUMBER(13,0)      NOT NULL,
       �ڌ��{�c                           NUMBER(13,0)      NOT NULL,
       �ڍ��c                           NUMBER(13,0)      NOT NULL,
       �ڏ���p                           NUMBER(13,0)      NOT NULL,
       ��������                         NUMBER(10,0)      NOT NULL,
       �s�`�w�h�m�s����                   NUMBER(10,0)      NOT NULL,
       �s�`�w�o������                     NUMBER(10,0)      NOT NULL,
       �s�`�w�o�c��                       NUMBER(13,0)      NOT NULL,
       �v����                             CHAR(13)          NOT NULL,
CONSTRAINT  PK_HSNINBT  PRIMARY KEY (
       �_��ԍ�,
       �����m�n,
       �ړW�J��));
