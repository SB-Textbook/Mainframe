prompt PL/SQL Developer import file
prompt Created on 2004�N8��27�� by ren_dali
set feedback off
set define off
prompt Dropping D692SFS_TBL...
drop table D692SFS_TBL cascade constraints;
prompt Creating D692SFS_TBL...
create table D692SFS_TBL
(
  �a�n�s�k�_��ԍ�   CHAR(10) not null,
  �a�n�s�k�����ԍ�   NUMBER(4) not null,
  �ă��[�X��       NUMBER(2) not null,
  �������z���v       NUMBER(13) not null,
  ������             CHAR(30) not null,
  ���t�@�����X�m�n�P CHAR(10) not null,
  ���[�X�I����       CHAR(8) not null,
  ����               NUMBER(4) not null
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
comment on table D692SFS_TBL
  is '�O�m�U���e�[�u���i�ă��[�X�f�[�^�j';
comment on column D692SFS_TBL.�a�n�s�k�_��ԍ�
  is '�O�m�ٓ��f�[�^�̂a�n�s�k�_��ԍ�';
comment on column D692SFS_TBL.�a�n�s�k�����ԍ�
  is '�O�m�ٓ��f�[�^�̂a�n�s�k�����ԍ�';
comment on column D692SFS_TBL.�ă��[�X��
  is '�����̍ă��[�X��';
comment on column D692SFS_TBL.�������z���v
  is '�O�m�ٓ��f�[�^�̐������z���v';
comment on column D692SFS_TBL.������
  is '�����̕������J�i';
comment on column D692SFS_TBL.���t�@�����X�m�n�P
  is '�����̃��t�@�����X�m�n�P';
comment on column D692SFS_TBL.���[�X�I����
  is '�_����e�̌_��I����';
comment on column D692SFS_TBL.����
  is '�_����e�̐���';
alter table D692SFS_TBL
  add constraint PK595 primary key (�a�n�s�k�_��ԍ�,�a�n�s�k�����ԍ�,�ă��[�X��)
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

prompt Disabling triggers for D692SFS_TBL...
alter table D692SFS_TBL disable all triggers;
prompt Loading D692SFS_TBL...
prompt Table is empty
prompt Enabling triggers for D692SFS_TBL...
alter table D692SFS_TBL enable all triggers;
set feedback on
set define on
prompt Done.
