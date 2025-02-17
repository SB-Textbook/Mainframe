prompt PL/SQL Developer import file
prompt Created on 2004�N8��27�� by ren_dali
set feedback off
set define off
prompt Dropping D693SHR_TBL...
drop table D693SHR_TBL cascade constraints;
prompt Creating D693SHR_TBL...
create table D693SHR_TBL
(
  �_��ԍ�                 CHAR(10) not null,
  �����ԍ�                 NUMBER(4) not null,
  ���[�X�I����             CHAR(8) not null,
  �f�[�^�敪               NUMBER(2) not null,
  ����ԍ�                 CHAR(16) not null,
  ���Y�ԍ�                 NUMBER(9) not null,
  �ꕔ�����敪             CHAR(1) not null,
  �ă��[�X�������z���v     NUMBER(13) not null,
  �ă��[�X�w�����z�Q��� NUMBER(13) not null,
  �ă��[�X��������Ŋz     NUMBER(13) not null,
  �������ʁQ���         NUMBER(4) not null,
  �����ʃ��[�X���Q��� NUMBER(13) not null,
  �����w�����z�Q���     NUMBER(13) not null,
  �������Y�����R�[�h       NUMBER(1) not null,
  �������p�z               NUMBER(13) not null,
  �������p������s�萔��   NUMBER(13) not null,
  ������                   CHAR(8) not null
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
comment on table D693SHR_TBL
  is '����t�ݐσe�[�u��';
comment on column D693SHR_TBL.�_��ԍ�
  is '���Ńt�@�C�i���X���ύX�f�[�^�̌_��ԍ�';
comment on column D693SHR_TBL.�����ԍ�
  is '���Ńt�@�C�i���X���ύX�f�[�^�̕����ԍ�';
comment on column D693SHR_TBL.���[�X�I����
  is '���Ńt�@�C�i���X���ύX�f�[�^�̃��[�X�I����';
comment on column D693SHR_TBL.�f�[�^�敪
  is '���Ńt�@�C�i���X���ύX�f�[�^�̃f�[�^�敪';
comment on column D693SHR_TBL.����ԍ�
  is '���Ńt�@�C�i���X���ύX�f�[�^�̉���ԍ�';
comment on column D693SHR_TBL.���Y�ԍ�
  is '���Ńt�@�C�i���X���ύX�f�[�^�̎��Y�ԍ�';
comment on column D693SHR_TBL.�ꕔ�����敪
  is '���Ńt�@�C�i���X���ύX�f�[�^�̈ꕔ�E�����敪';
comment on column D693SHR_TBL.�ă��[�X�������z���v
  is '���Ńt�@�C�i���X���ύX�f�[�^�̍ă��[�X�E�������z���v';
comment on column D693SHR_TBL.�ă��[�X�w�����z�Q���
  is '���Ńt�@�C�i���X���ύX�f�[�^�̍ă��[�X�E�w�����z�i��񕪁j';
comment on column D693SHR_TBL.�ă��[�X��������Ŋz
  is '���Ńt�@�C�i���X���ύX�f�[�^�̍ă��[�X�E��������Ŋz';
comment on column D693SHR_TBL.�������ʁQ���
  is '���Ńt�@�C�i���X���ύX�f�[�^�̖����E���ʁi��񕪁j';
comment on column D693SHR_TBL.�����ʃ��[�X���Q���
  is '���Ńt�@�C�i���X���ύX�f�[�^�̖����E�ʃ��[�X���i��񕪁j';
comment on column D693SHR_TBL.�����w�����z�Q���
  is '���Ńt�@�C�i���X���ύX�f�[�^�̖����E�w�����z�i��񕪁j';
comment on column D693SHR_TBL.�������Y�����R�[�h
  is '���Ńt�@�C�i���X���ύX�f�[�^�̖����E���Y�����R�[�h';
comment on column D693SHR_TBL.�������p�z
  is '���Ńt�@�C�i���X���ύX�f�[�^�̖����E���p�z';
comment on column D693SHR_TBL.�������p������s�萔��
  is '���Ńt�@�C�i���X���ύX�f�[�^�̖����E���p������s�萔��';
comment on column D693SHR_TBL.������
  is '���Ńt�@�C�i���X���ύX�f�[�^�̏�����';
alter table D693SHR_TBL
  add constraint PK596 primary key (�_��ԍ�,�����ԍ�)
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

prompt Disabling triggers for D693SHR_TBL...
alter table D693SHR_TBL disable all triggers;
prompt Loading D693SHR_TBL...
prompt Table is empty
prompt Enabling triggers for D693SHR_TBL...
alter table D693SHR_TBL enable all triggers;
set feedback on
set define on
prompt Done.
