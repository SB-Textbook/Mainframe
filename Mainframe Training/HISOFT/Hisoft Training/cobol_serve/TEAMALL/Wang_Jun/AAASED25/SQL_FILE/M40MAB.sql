prompt PL/SQL Developer import file
prompt Created on 2004N1022ú by ren_dali
set feedback off
set define off
prompt Dropping M40MAB_TBL...
drop table M40MAB_TBL cascade constraints;
prompt Creating M40MAB_TBL...
create table M40MAB_TBL
(
  R[hæª                 CHAR(1) not null,
  _ñÔ                     CHAR(15) not null,
  Ä[Xñ                 NUMBER(2) not null,
  _ñíÞ                     CHAR(3) not null,
  O¥àz                     NUMBER(13) not null,
  O¥àzÁïÅ               NUMBER(13) not null,
  O¥ñûû@                 CHAR(1) not null,
  O¥ñûTCg               NUMBER(2) not null,
  O¥ñûú                   CHAR(2) not null,
  [Jnñ                   NUMBER(3) not null,
  [                     NUMBER(3) not null,
  [JnN                 CHAR(6) not null,
  ñûz                       NUMBER(13) not null,
  Uè¿                   NUMBER(13) not null,
  üàú                       CHAR(8) not null,
  ¼ÐO¥àz                 NUMBER(13) not null,
  ¼ÐO¥àzÁïÅ           NUMBER(13) not null,
  ¼Ðñûz                   NUMBER(13) not null,
  ¼ÐñûzÁïÅ             NUMBER(13) not null,
  ¼Ððñª¿àÝv           NUMBER(13) not null,
  ¼ÐðñªÁïÅÝv         NUMBER(13) not null,
  ¼Ð¢ñûz                 NUMBER(13) not null,
  Á»z                   NUMBER(13) not null,
  Á»ú                       CHAR(8) not null,
  Á»zÝv                   NUMBER(13) not null,
  UÖz                   NUMBER(13) not null,
  UÖú                       CHAR(8) not null,
  UÖzÝv                   NUMBER(13) not null,
  Oc                   NUMBER(13) not null,
  ñûz                   NUMBER(13) not null,
  c                   NUMBER(13) not null,
  cOó                   NUMBER(5,2) not null,
  _ñJnú                   CHAR(8) not null,
  ¿ææøæR[h           CHAR(9) not null,
  Úqæª                     CHAR(2) not null,
  TASSR[h                   CHAR(7) not null,
  Ý|Nú                   CHAR(8) not null,
  Áèæøææª               CHAR(1) not null,
  ÅåÂ£ñ                 CHAR(1) not null,
  ¿æR[h                 CHAR(5) not null,
  _ñææøæR[h           CHAR(9) not null,
  _ñæR[h                 CHAR(5) not null,
  SÛR[h               CHAR(4) not null,
  SÒR[h                 CHAR(8) not null,
  ¦²æª                     CHAR(1) not null,
  ÇÂ x               CHAR(1) not null,
  å_ñæª                   CHAR(1) not null,
  óÔR[h                   VARCHAR2(4) not null,
  âsR[h                   CHAR(4) not null,
  xXR[h                   CHAR(4) not null,
  UËl¼                 VARCHAR2(48) not null,
  Oóàó¥c\ÎÛtO   CHAR(1) not null,
  ¼óààó\ÎÛtO       CHAR(1) not null,
  ¼óàüàú                 CHAR(8) not null,
  ¼óàrdpQmn           NUMBER(6) not null,
  ïvåR[h               CHAR(2) not null,
  dótOQUÖOó[X¿ CHAR(1) not null,
  dótOQUÖOó         CHAR(1) not null,
  dótOQUÖ¼ó         CHAR(1) not null,
  ïÚ                         CHAR(1) not null,
  ñûz¼Ð               NUMBER(13) not null,
  Á»z¼Ð               NUMBER(13) not null,
  Á»zÝv¼Ð               NUMBER(13) not null,
  c¼Ð               NUMBER(13) not null,
  Oc¼Ð               NUMBER(13) not null,
  ðñª¿àÝv               NUMBER(13) not null,
  ðñªÁïÅÝv             NUMBER(13) not null,
  opå_ñæª             CHAR(1) not null,
  Oðñª¿àÝv         NUMBER(13) not null,
  OðñªÁïÅÝv       NUMBER(13) not null,
  O¼Ððñª¿àÝv     NUMBER(13) not null,
  O¼ÐðñªÁïÅÝv   NUMBER(13) not null,
  ðñª¿à               NUMBER(13) not null,
  ðñªÁïÅ             NUMBER(13) not null,
  ¼Ððñª¿à           NUMBER(13) not null,
  ¼ÐðñªÁïÅ         NUMBER(13) not null,
  OÁ»zÝv             NUMBER(13) default 0 not null,
  OÁ»zÝv¼Ð         NUMBER(13) default 0 not null,
  üàæª                     CHAR(2) not null,
  ¢ñûz                     NUMBER(13) not null,
  æÁæª                     CHAR(1) not null,
  OUÖzÝv             NUMBER(13) not null,
  OUÖzÝv¼Ð         NUMBER(13) not null,
  UÖz¼Ð               NUMBER(13) not null,
  UÖzÝv¼Ð               NUMBER(13) not null
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 128K
    minextents 1
    maxextents unlimited
  );
comment on table M40MAB_TBL
  is 'Oóîñ';
alter table M40MAB_TBL
  add constraint PK_M40MAB_TBL primary key (R[hæª,_ñÔ,Ä[Xñ,_ñíÞ,¼óàüàú,¼óàrdpQmn)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 128K
    minextents 1
    maxextents unlimited
  );

prompt Disabling triggers for M40MAB_TBL...
alter table M40MAB_TBL disable all triggers;
prompt Loading M40MAB_TBL...
prompt Table is empty
prompt Enabling triggers for M40MAB_TBL...
alter table M40MAB_TBL enable all triggers;
set feedback on
set define on
prompt Done.
