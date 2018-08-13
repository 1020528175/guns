-------------------------------------------
-- Export file for user GUNS             --
-- Created by army on 2018/8/4, 17:22:03 --
-------------------------------------------

spool guns_object.log

prompt
prompt Creating table SYS_DEPT
prompt =======================
prompt
create table SYS_DEPT
(
  ID         VARCHAR2(32) not null,
  NUM        NUMBER(11),
  PID        VARCHAR2(32),
  PIDS       NVARCHAR2(255),
  SIMPLENAME NVARCHAR2(45),
  FULLNAME   NVARCHAR2(255),
  TIPS       NVARCHAR2(255),
  VERSION    NUMBER(11)
)
;
comment on table SYS_DEPT
  is '���ű�';
comment on column SYS_DEPT.ID
  is '����ID';
comment on column SYS_DEPT.NUM
  is '����';
comment on column SYS_DEPT.PID
  is '������ID';
comment on column SYS_DEPT.PIDS
  is '����IDS';
comment on column SYS_DEPT.SIMPLENAME
  is '���';
comment on column SYS_DEPT.FULLNAME
  is 'ȫ��';
comment on column SYS_DEPT.TIPS
  is '��ʾ';
comment on column SYS_DEPT.VERSION
  is '�汾���ֹ��������ֶΣ�';
alter table SYS_DEPT
  add primary key (ID);

prompt
prompt Creating table SYS_DICT
prompt =======================
prompt
create table SYS_DICT
(
  ID   NVARCHAR2(255) not null,
  NUM  NVARCHAR2(255),
  PID  NVARCHAR2(255),
  NAME NVARCHAR2(255),
  TIPS NVARCHAR2(255),
  CODE NVARCHAR2(255)
)
;
comment on table SYS_DICT
  is '�ֵ��';
comment on column SYS_DICT.ID
  is '����ID';
comment on column SYS_DICT.NUM
  is '����';
comment on column SYS_DICT.PID
  is '�����ֵ�';
comment on column SYS_DICT.NAME
  is '����';
comment on column SYS_DICT.TIPS
  is '��ʾ';
comment on column SYS_DICT.CODE
  is 'ֵ';
alter table SYS_DICT
  add primary key (ID);

prompt
prompt Creating table SYS_LOGIN_LOG
prompt ============================
prompt
create table SYS_LOGIN_LOG
(
  ID         NVARCHAR2(32) not null,
  LOGNAME    NVARCHAR2(255),
  USERID     NVARCHAR2(32),
  CREATETIME DATE,
  SUCCEED    NVARCHAR2(255),
  IP         NVARCHAR2(255),
  MESSAGE    CLOB
)
;
comment on table SYS_LOGIN_LOG
  is '��¼��¼';
comment on column SYS_LOGIN_LOG.ID
  is '����';
comment on column SYS_LOGIN_LOG.LOGNAME
  is '��־����';
comment on column SYS_LOGIN_LOG.USERID
  is '����ԱID';
comment on column SYS_LOGIN_LOG.CREATETIME
  is '����ʱ��';
comment on column SYS_LOGIN_LOG.SUCCEED
  is '�Ƿ�ִ�гɹ�';
comment on column SYS_LOGIN_LOG.IP
  is '��¼IP';
comment on column SYS_LOGIN_LOG.MESSAGE
  is '������Ϣ';
alter table SYS_LOGIN_LOG
  add primary key (ID);

prompt
prompt Creating table SYS_MENU
prompt =======================
prompt
create table SYS_MENU
(
  ID     VARCHAR2(32) not null,
  CODE   NVARCHAR2(255),
  PCODE  NVARCHAR2(255),
  PCODES NVARCHAR2(255),
  NAME   NVARCHAR2(255),
  ICON   NVARCHAR2(255),
  URL    NVARCHAR2(255),
  NUM    NUMBER(11),
  LEVELS VARCHAR2(11),
  ISMENU VARCHAR2(11),
  TIPS   NVARCHAR2(255),
  STATUS VARCHAR2(11),
  ISOPEN VARCHAR2(11)
)
;
comment on table SYS_MENU
  is '�˵���';
comment on column SYS_MENU.ID
  is '����ID';
comment on column SYS_MENU.CODE
  is '�˵����';
comment on column SYS_MENU.PCODE
  is '�˵������';
comment on column SYS_MENU.PCODES
  is '��ǰ�˵������и��˵����';
comment on column SYS_MENU.NAME
  is '�˵�����';
comment on column SYS_MENU.ICON
  is '�˵�ͼ��';
comment on column SYS_MENU.URL
  is 'URL��ַ';
comment on column SYS_MENU.NUM
  is '�˵������';
comment on column SYS_MENU.LEVELS
  is '�˵��㼶';
comment on column SYS_MENU.ISMENU
  is '�Ƿ��ǲ˵���1����  0�����ǣ�';
comment on column SYS_MENU.TIPS
  is '��ע';
comment on column SYS_MENU.STATUS
  is '�˵�״̬ :  1:����   0:������';
comment on column SYS_MENU.ISOPEN
  is '�Ƿ��:    1:��   0:����';
alter table SYS_MENU
  add primary key (ID);

prompt
prompt Creating table SYS_NOTICE
prompt =========================
prompt
create table SYS_NOTICE
(
  ID         VARCHAR2(32) not null,
  TITLE      NVARCHAR2(255),
  TYPE       NUMBER(11),
  CONTENT    NCLOB,
  CREATETIME DATE,
  CREATER    VARCHAR2(32)
)
;
comment on table SYS_NOTICE
  is '֪ͨ��';
comment on column SYS_NOTICE.ID
  is '����';
comment on column SYS_NOTICE.TITLE
  is '����';
comment on column SYS_NOTICE.TYPE
  is '����';
comment on column SYS_NOTICE.CONTENT
  is '����';
comment on column SYS_NOTICE.CREATETIME
  is '����ʱ��';
comment on column SYS_NOTICE.CREATER
  is '������';
alter table SYS_NOTICE
  add primary key (ID);

prompt
prompt Creating table SYS_OPERATION_LOG
prompt ================================
prompt
create table SYS_OPERATION_LOG
(
  ID         NVARCHAR2(32) not null,
  LOGTYPE    NVARCHAR2(255),
  LOGNAME    NVARCHAR2(255),
  USERID     NVARCHAR2(32),
  CLASSNAME  NVARCHAR2(255),
  METHOD     NCLOB,
  CREATETIME DATE,
  SUCCEED    NVARCHAR2(255),
  MESSAGE    NCLOB
)
;
comment on table SYS_OPERATION_LOG
  is '������־';
comment on column SYS_OPERATION_LOG.ID
  is '����';
comment on column SYS_OPERATION_LOG.LOGTYPE
  is '��־����';
comment on column SYS_OPERATION_LOG.LOGNAME
  is '��־����';
comment on column SYS_OPERATION_LOG.USERID
  is '�û�ID';
comment on column SYS_OPERATION_LOG.CLASSNAME
  is '������';
comment on column SYS_OPERATION_LOG.METHOD
  is '��������';
comment on column SYS_OPERATION_LOG.CREATETIME
  is '����ʱ��';
comment on column SYS_OPERATION_LOG.SUCCEED
  is '�Ƿ�ɹ�';
comment on column SYS_OPERATION_LOG.MESSAGE
  is '��ע';
alter table SYS_OPERATION_LOG
  add primary key (ID);

prompt
prompt Creating table SYS_RELATION
prompt ===========================
prompt
create table SYS_RELATION
(
  ID     VARCHAR2(32) not null,
  MENUID VARCHAR2(32),
  ROLEID VARCHAR2(32)
)
;
comment on table SYS_RELATION
  is '��ɫ�Ͳ˵�������';
comment on column SYS_RELATION.ID
  is '����';
comment on column SYS_RELATION.MENUID
  is '�˵�ID';
comment on column SYS_RELATION.ROLEID
  is '��ɫID';
alter table SYS_RELATION
  add primary key (ID);

prompt
prompt Creating table SYS_ROLE
prompt =======================
prompt
create table SYS_ROLE
(
  ID      NVARCHAR2(32) not null,
  NUM     NVARCHAR2(32),
  PID     NVARCHAR2(32),
  NAME    NVARCHAR2(255),
  DEPTID  NVARCHAR2(32),
  TIPS    NVARCHAR2(255),
  VERSION NUMBER(11)
)
;
comment on table SYS_ROLE
  is '��ɫ��';
comment on column SYS_ROLE.ID
  is '����ID';
comment on column SYS_ROLE.NUM
  is '���';
comment on column SYS_ROLE.PID
  is '����ɫID';
comment on column SYS_ROLE.NAME
  is '��ɫ����';
comment on column SYS_ROLE.DEPTID
  is '��������';
comment on column SYS_ROLE.TIPS
  is '��ʾ';
comment on column SYS_ROLE.VERSION
  is '�����ֶ�(��ʱû�ã�';
alter table SYS_ROLE
  add constraint ROLEID primary key (ID);

prompt
prompt Creating table SYS_USER
prompt =======================
prompt
create table SYS_USER
(
  ID         NVARCHAR2(32) not null,
  AVATAR     NVARCHAR2(255),
  ACCOUNT    NVARCHAR2(45),
  PASSWORD   NVARCHAR2(45),
  SALT       NVARCHAR2(45),
  NAME       NVARCHAR2(45),
  BIRTHDAY   DATE,
  SEX        NVARCHAR2(45),
  EMAIL      NVARCHAR2(45),
  PHONE      NVARCHAR2(45),
  ROLEID     NVARCHAR2(255),
  DEPTID     NVARCHAR2(45),
  STATUS     NVARCHAR2(45),
  CREATETIME DATE,
  VERSION    NUMBER(11)
)
;
comment on table SYS_USER
  is '����Ա��';
comment on column SYS_USER.ID
  is '����ID';
comment on column SYS_USER.AVATAR
  is 'ͷ��';
comment on column SYS_USER.ACCOUNT
  is '�˺�';
comment on column SYS_USER.PASSWORD
  is '����';
comment on column SYS_USER.SALT
  is 'MD5������';
comment on column SYS_USER.NAME
  is '����';
comment on column SYS_USER.BIRTHDAY
  is '����';
comment on column SYS_USER.SEX
  is '�Ա�1���� 2��Ů��';
comment on column SYS_USER.EMAIL
  is '�����ʼ�';
comment on column SYS_USER.PHONE
  is '�绰';
comment on column SYS_USER.ROLEID
  is '��ɫID';
comment on column SYS_USER.DEPTID
  is '����ID';
comment on column SYS_USER.STATUS
  is '״̬(1������  2������  3��ɾ����';
comment on column SYS_USER.CREATETIME
  is '����ʱ��';
comment on column SYS_USER.VERSION
  is '�����ֶ�';
alter table SYS_USER
  add constraint USERID primary key (ID);


spool off
