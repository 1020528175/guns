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
  is '部门表';
comment on column SYS_DEPT.ID
  is '主键ID';
comment on column SYS_DEPT.NUM
  is '排序';
comment on column SYS_DEPT.PID
  is '父部门ID';
comment on column SYS_DEPT.PIDS
  is '父级IDS';
comment on column SYS_DEPT.SIMPLENAME
  is '简称';
comment on column SYS_DEPT.FULLNAME
  is '全称';
comment on column SYS_DEPT.TIPS
  is '提示';
comment on column SYS_DEPT.VERSION
  is '版本（乐观锁保留字段）';
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
  is '字典表';
comment on column SYS_DICT.ID
  is '主键ID';
comment on column SYS_DICT.NUM
  is '排序';
comment on column SYS_DICT.PID
  is '父级字典';
comment on column SYS_DICT.NAME
  is '名称';
comment on column SYS_DICT.TIPS
  is '提示';
comment on column SYS_DICT.CODE
  is '值';
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
  is '登录记录';
comment on column SYS_LOGIN_LOG.ID
  is '主键';
comment on column SYS_LOGIN_LOG.LOGNAME
  is '日志名称';
comment on column SYS_LOGIN_LOG.USERID
  is '管理员ID';
comment on column SYS_LOGIN_LOG.CREATETIME
  is '创建时间';
comment on column SYS_LOGIN_LOG.SUCCEED
  is '是否执行成功';
comment on column SYS_LOGIN_LOG.IP
  is '登录IP';
comment on column SYS_LOGIN_LOG.MESSAGE
  is '具体消息';
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
  is '菜单表';
comment on column SYS_MENU.ID
  is '主键ID';
comment on column SYS_MENU.CODE
  is '菜单编号';
comment on column SYS_MENU.PCODE
  is '菜单父编号';
comment on column SYS_MENU.PCODES
  is '当前菜单的所有父菜单编号';
comment on column SYS_MENU.NAME
  is '菜单名称';
comment on column SYS_MENU.ICON
  is '菜单图标';
comment on column SYS_MENU.URL
  is 'URL地址';
comment on column SYS_MENU.NUM
  is '菜单排序号';
comment on column SYS_MENU.LEVELS
  is '菜单层级';
comment on column SYS_MENU.ISMENU
  is '是否是菜单（1：是  0：不是）';
comment on column SYS_MENU.TIPS
  is '备注';
comment on column SYS_MENU.STATUS
  is '菜单状态 :  1:启用   0:不启用';
comment on column SYS_MENU.ISOPEN
  is '是否打开:    1:打开   0:不打开';
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
  is '通知表';
comment on column SYS_NOTICE.ID
  is '主键';
comment on column SYS_NOTICE.TITLE
  is '标题';
comment on column SYS_NOTICE.TYPE
  is '类型';
comment on column SYS_NOTICE.CONTENT
  is '内容';
comment on column SYS_NOTICE.CREATETIME
  is '创建时间';
comment on column SYS_NOTICE.CREATER
  is '创建人';
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
  is '操作日志';
comment on column SYS_OPERATION_LOG.ID
  is '主键';
comment on column SYS_OPERATION_LOG.LOGTYPE
  is '日志类型';
comment on column SYS_OPERATION_LOG.LOGNAME
  is '日志名称';
comment on column SYS_OPERATION_LOG.USERID
  is '用户ID';
comment on column SYS_OPERATION_LOG.CLASSNAME
  is '类名称';
comment on column SYS_OPERATION_LOG.METHOD
  is '方法名称';
comment on column SYS_OPERATION_LOG.CREATETIME
  is '创建时间';
comment on column SYS_OPERATION_LOG.SUCCEED
  is '是否成功';
comment on column SYS_OPERATION_LOG.MESSAGE
  is '备注';
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
  is '角色和菜单关联表';
comment on column SYS_RELATION.ID
  is '主键';
comment on column SYS_RELATION.MENUID
  is '菜单ID';
comment on column SYS_RELATION.ROLEID
  is '角色ID';
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
  is '角色表';
comment on column SYS_ROLE.ID
  is '主键ID';
comment on column SYS_ROLE.NUM
  is '序号';
comment on column SYS_ROLE.PID
  is '父角色ID';
comment on column SYS_ROLE.NAME
  is '角色名称';
comment on column SYS_ROLE.DEPTID
  is '部门名称';
comment on column SYS_ROLE.TIPS
  is '提示';
comment on column SYS_ROLE.VERSION
  is '保留字段(暂时没用）';
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
  is '管理员表';
comment on column SYS_USER.ID
  is '主键ID';
comment on column SYS_USER.AVATAR
  is '头像';
comment on column SYS_USER.ACCOUNT
  is '账号';
comment on column SYS_USER.PASSWORD
  is '密码';
comment on column SYS_USER.SALT
  is 'MD5密码盐';
comment on column SYS_USER.NAME
  is '名字';
comment on column SYS_USER.BIRTHDAY
  is '生日';
comment on column SYS_USER.SEX
  is '性别（1：男 2：女）';
comment on column SYS_USER.EMAIL
  is '电子邮件';
comment on column SYS_USER.PHONE
  is '电话';
comment on column SYS_USER.ROLEID
  is '角色ID';
comment on column SYS_USER.DEPTID
  is '部门ID';
comment on column SYS_USER.STATUS
  is '状态(1：启用  2：冻结  3：删除）';
comment on column SYS_USER.CREATETIME
  is '创建时间';
comment on column SYS_USER.VERSION
  is '保留字段';
alter table SYS_USER
  add constraint USERID primary key (ID);


spool off
