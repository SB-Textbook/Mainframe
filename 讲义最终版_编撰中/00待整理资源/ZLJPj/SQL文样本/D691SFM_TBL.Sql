prompt PL/SQL Developer import file
prompt Created on 2004�N8��27�� by ren_dali
set feedback off
set define off
prompt Dropping D691SFM_TBL...
drop table D691SFM_TBL cascade constraints;
prompt Creating D691SFM_TBL...
create table D691SFM_TBL
(
  �a�n�s�k�_��ԍ�     CHAR(10) not null,
  �a�n�s�k�����ԍ�     NUMBER(4) not null,
  �ă��[�X��         NUMBER(2) not null,
  ���[�X�I����         CHAR(8) not null,
  ���ʁQ���O         NUMBER(4) not null,
  ���ʁQ����         NUMBER(4) not null,
  �ʃ��[�X���Q���O NUMBER(13) not null,
  �w�����z�Q���O     NUMBER(13) not null,
  ���Y�����R�[�h       NUMBER(1) not null
)
tablespace USERS
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 128K
    next 128K
    minextents 1
    maxextents 4096
    pctincrease 0
  );
comment on table D691SFM_TBL
  is '�O�m�U���e�[�u���i�����f�[�^�j';
comment on column D691SFM_TBL.�a�n�s�k�_��ԍ�
  is '�O�m�ٓ��f�[�^�̂a�n�s�k�_��ԍ�';
comment on column D691SFM_TBL.�a�n�s�k�����ԍ�
  is '�O�m�ٓ��f�[�^�̂a�n�s�k�����ԍ�';
comment on column D691SFM_TBL.�ă��[�X��
  is '�����̍ă��[�X��';
comment on column D691SFM_TBL.���[�X�I����
  is '�_����e�̌_��I����';
comment on column D691SFM_TBL.���ʁQ���O
  is '�����̐���';
comment on column D691SFM_TBL.���ʁQ����
  is '�O�m�ٓ��f�[�^�̐���';
comment on column D691SFM_TBL.�ʃ��[�X���Q���O
  is '�����̕������[�X��';
comment on column D691SFM_TBL.�w�����z�Q���O
  is '�����̎��Ѝw���z';
comment on column D691SFM_TBL.���Y�����R�[�h
  is '���Y�����R�[�h';
alter table D691SFM_TBL
  add constraint PK594 primary key (�a�n�s�k�_��ԍ�,�a�n�s�k�����ԍ�,�ă��[�X��)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 128K
    next 128K
    minextents 1
    maxextents 4096
    pctincrease 0
  );

prompt Disabling triggers for D691SFM_TBL...
alter table D691SFM_TBL disable all triggers;
prompt Loading D691SFM_TBL...
prompt Table is empty
prompt Enabling triggers for D691SFM_TBL...
alter table D691SFM_TBL enable all triggers;
set feedback on
set define on
prompt Done.
