DROP   TABLE  IKOTBL005   ;
CREATE TABLE  IKOTBL005  (
       ����������R�[�h                   CHAR(3)           NOT NULL,
       �A�N�Z�X�敪                       CHAR(1)           NOT NULL,
       ���菈���R�[�h                     CHAR(2)           NOT NULL,
       ����ŃR�[�h                       CHAR(2)           NOT NULL,
       �������Z�敪                       NUMBER(1,0)       NOT NULL,
       �萔�������R�[�h                   CHAR(2)           NOT NULL,
       �ă��[�X�R�[�h                     NUMBER(1,0)       NOT NULL,
       �v��敪                           NUMBER(1,0)       NOT NULL,
       �敪�P                             NUMBER(1,0)       NOT NULL,
       ����P��                         CHAR(1)           NOT NULL,
       �敪�Q                             CHAR(1)           NOT NULL,
       �_���ޏ�P��                     NUMBER(1,0)       NOT NULL,
       �V��������R�[�h                   CHAR(3)           ,
       �V��������R�[�h�Q                 CHAR(3)           ,
CONSTRAINT  PK_IKOTBL005  PRIMARY KEY (
       ����������R�[�h,
       �A�N�Z�X�敪,
       ���菈���R�[�h,
       ����ŃR�[�h,
       �������Z�敪,
       �萔�������R�[�h,
       �ă��[�X�R�[�h,
       �v��敪,
       �敪�P,
       ����P��,
       �敪�Q,
       �_���ޏ�P��));

COMMENT ON TABLE IKOTBL005 IS '��������R�[�h�ϊ��e�[�u��';
