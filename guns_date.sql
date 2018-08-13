prompt PL/SQL Developer import file
prompt Created on 2018年8月4日 by army
set feedback off
set define off
prompt Loading SYS_DEPT...
insert into SYS_DEPT (ID, NUM, PID, PIDS, SIMPLENAME, FULLNAME, TIPS, VERSION)
values ('24', 1, '0', '[0],', '总公司', '总公司', null, null);
insert into SYS_DEPT (ID, NUM, PID, PIDS, SIMPLENAME, FULLNAME, TIPS, VERSION)
values ('25', 2, '24', '[0],[24],', '开发部', '开发部', null, null);
insert into SYS_DEPT (ID, NUM, PID, PIDS, SIMPLENAME, FULLNAME, TIPS, VERSION)
values ('26', 3, '24', '[0],[24],', '运营部', '运营部', null, null);
insert into SYS_DEPT (ID, NUM, PID, PIDS, SIMPLENAME, FULLNAME, TIPS, VERSION)
values ('27', 4, '24', '[0],[24],', '战略部', '战略部', null, null);
commit;
prompt 4 records loaded
prompt Loading SYS_DICT...
insert into SYS_DICT (ID, NUM, PID, NAME, TIPS, CODE)
values ('50', '0', '0', '性别', null, 'sys_sex');
insert into SYS_DICT (ID, NUM, PID, NAME, TIPS, CODE)
values ('51', '1', '50', '男', null, '1');
insert into SYS_DICT (ID, NUM, PID, NAME, TIPS, CODE)
values ('52', '2', '50', '女', null, '2');
insert into SYS_DICT (ID, NUM, PID, NAME, TIPS, CODE)
values ('53', '0', '0', '状态', null, 'sys_state');
insert into SYS_DICT (ID, NUM, PID, NAME, TIPS, CODE)
values ('54', '1', '53', '启用', null, '1');
insert into SYS_DICT (ID, NUM, PID, NAME, TIPS, CODE)
values ('55', '2', '53', '禁用', null, '2');
insert into SYS_DICT (ID, NUM, PID, NAME, TIPS, CODE)
values ('56', '0', '0', '账号状态', null, 'account_state');
insert into SYS_DICT (ID, NUM, PID, NAME, TIPS, CODE)
values ('57', '1', '56', '启用', null, '1');
insert into SYS_DICT (ID, NUM, PID, NAME, TIPS, CODE)
values ('58', '2', '56', '冻结', null, '2');
insert into SYS_DICT (ID, NUM, PID, NAME, TIPS, CODE)
values ('59', '3', '56', '已删除', null, '3');
commit;
prompt 10 records loaded
prompt Loading SYS_MENU...
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('105', 'system', '0', '[0],', '系统管理', 'fa-user', '#', 4, '1', '1', null, '1', '1');
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('106', 'mgr', 'system', '[0],[system],', '用户管理', null, '/mgr', 1, '2', '1', null, '1', '0');
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('107', 'mgr_add', 'mgr', '[0],[system],[mgr],', '添加用户', null, '/mgr/add', 1, '3', '0', null, '1', '0');
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('108', 'mgr_edit', 'mgr', '[0],[system],[mgr],', '修改用户', null, '/mgr/edit', 2, '3', '0', null, '1', '0');
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('109', 'mgr_delete', 'mgr', '[0],[system],[mgr],', '删除用户', null, '/mgr/delete', 3, '3', '0', null, '1', '0');
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('110', 'mgr_reset', 'mgr', '[0],[system],[mgr],', '重置密码', null, '/mgr/reset', 4, '3', '0', null, '1', '0');
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('111', 'mgr_freeze', 'mgr', '[0],[system],[mgr],', '冻结用户', null, '/mgr/freeze', 5, '3', '0', null, '1', '0');
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('112', 'mgr_unfreeze', 'mgr', '[0],[system],[mgr],', '解除冻结用户', null, '/mgr/unfreeze', 6, '3', '0', null, '1', '0');
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('113', 'mgr_setRole', 'mgr', '[0],[system],[mgr],', '分配角色', null, '/mgr/setRole', 7, '3', '0', null, '1', '0');
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('114', 'role', 'system', '[0],[system],', '角色管理', null, '/role', 2, '2', '1', null, '1', '0');
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('115', 'role_add', 'role', '[0],[system],[role],', '添加角色', null, '/role/add', 1, '3', '0', null, '1', '0');
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('116', 'role_edit', 'role', '[0],[system],[role],', '修改角色', null, '/role/edit', 2, '3', '0', null, '1', '0');
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('117', 'role_remove', 'role', '[0],[system],[role],', '删除角色', null, '/role/remove', 3, '3', '0', null, '1', '0');
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('118', 'role_setAuthority', 'role', '[0],[system],[role],', '配置权限', null, '/role/setAuthority', 4, '3', '0', null, '1', '0');
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('119', 'menu', 'system', '[0],[system],', '菜单管理', null, '/menu', 4, '2', '1', null, '1', '0');
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('120', 'menu_add', 'menu', '[0],[system],[menu],', '添加菜单', null, '/menu/add', 1, '3', '0', null, '1', '0');
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('121', 'menu_edit', 'menu', '[0],[system],[menu],', '修改菜单', null, '/menu/edit', 2, '3', '0', null, '1', '0');
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('122', 'menu_remove', 'menu', '[0],[system],[menu],', '删除菜单', null, '/menu/remove', 3, '3', '0', null, '1', '0');
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('128', 'log', 'system', '[0],[system],', '业务日志', null, '/log', 6, '2', '1', null, '1', '0');
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('130', 'druid', 'system', '[0],[system],', '监控管理', null, '/druid', 7, '2', '1', null, '1', null);
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('131', 'dept', 'system', '[0],[system],', '部门管理', null, '/dept', 3, '2', '1', null, '1', null);
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('132', 'dict', 'system', '[0],[system],', '字典管理', null, '/dict', 4, '2', '1', null, '1', null);
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('133', 'loginLog', 'system', '[0],[system],', '登录日志', null, '/loginLog', 6, '2', '1', null, '1', null);
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('134', 'log_clean', 'log', '[0],[system],[log],', '清空日志', null, '/log/delLog', 3, '3', '0', null, '1', null);
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('135', 'dept_add', 'dept', '[0],[system],[dept],', '添加部门', null, '/dept/add', 1, '3', '0', null, '1', null);
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('136', 'dept_update', 'dept', '[0],[system],[dept],', '修改部门', null, '/dept/update', 1, '3', '0', null, '1', null);
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('137', 'dept_delete', 'dept', '[0],[system],[dept],', '删除部门', null, '/dept/delete', 1, '3', '0', null, '1', null);
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('138', 'dict_add', 'dict', '[0],[system],[dict],', '添加字典', null, '/dict/add', 1, '3', '0', null, '1', null);
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('139', 'dict_update', 'dict', '[0],[system],[dict],', '修改字典', null, '/dict/update', 1, '3', '0', null, '1', null);
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('140', 'dict_delete', 'dict', '[0],[system],[dict],', '删除字典', null, '/dict/delete', 1, '3', '0', null, '1', null);
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('141', 'notice', 'system', '[0],[system],', '通知管理', null, '/notice', 9, '2', '1', null, '1', null);
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('142', 'notice_add', 'notice', '[0],[system],[notice],', '添加通知', null, '/notice/add', 1, '3', '0', null, '1', null);
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('143', 'notice_update', 'notice', '[0],[system],[notice],', '修改通知', null, '/notice/update', 2, '3', '0', null, '1', null);
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('144', 'notice_delete', 'notice', '[0],[system],[notice],', '删除通知', null, '/notice/delete', 3, '3', '0', null, '1', null);
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('145', 'hello', '0', '[0],', '通知', 'fa-rocket', '/notice/hello', 1, '1', '1', null, '1', null);
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('148', 'code', '0', '[0],', '代码生成', 'fa-code', '/code', 3, '1', '1', null, '1', null);
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('149', 'api_mgr', '0', '[0],', '接口文档', 'fa-leaf', '/swagger-ui.html', 2, '1', '1', null, '1', null);
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('150', 'to_menu_edit', 'menu', '[0],[system],[menu],', '菜单编辑跳转', null, '/menu/menu_edit', 4, '3', '0', null, '1', null);
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('151', 'menu_list', 'menu', '[0],[system],[menu],', '菜单列表', null, '/menu/list', 5, '3', '0', null, '1', null);
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('152', 'to_dept_update', 'dept', '[0],[system],[dept],', '修改部门跳转', null, '/dept/dept_update', 4, '3', '0', null, '1', null);
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('153', 'dept_list', 'dept', '[0],[system],[dept],', '部门列表', null, '/dept/list', 5, '3', '0', null, '1', null);
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('154', 'dept_detail', 'dept', '[0],[system],[dept],', '部门详情', null, '/dept/detail', 6, '3', '0', null, '1', null);
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('155', 'to_dict_edit', 'dict', '[0],[system],[dict],', '修改菜单跳转', null, '/dict/dict_edit', 4, '3', '0', null, '1', null);
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('156', 'dict_list', 'dict', '[0],[system],[dict],', '字典列表', null, '/dict/list', 5, '3', '0', null, '1', null);
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('157', 'dict_detail', 'dict', '[0],[system],[dict],', '字典详情', null, '/dict/detail', 6, '3', '0', null, '1', null);
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('158', 'log_list', 'log', '[0],[system],[log],', '日志列表', null, '/log/list', 2, '3', '0', null, '1', null);
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('159', 'log_detail', 'log', '[0],[system],[log],', '日志详情', null, '/log/detail', 3, '3', '0', null, '1', null);
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('160', 'del_login_log', 'loginLog', '[0],[system],[loginLog],', '清空登录日志', null, '/loginLog/delLoginLog', 1, '3', '0', null, '1', null);
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('161', 'login_log_list', 'loginLog', '[0],[system],[loginLog],', '登录日志列表', null, '/loginLog/list', 2, '3', '0', null, '1', null);
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('162', 'to_role_edit', 'role', '[0],[system],[role],', '修改角色跳转', null, '/role/role_edit', 5, '3', '0', null, '1', null);
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('163', 'to_role_assign', 'role', '[0],[system],[role],', '角色分配跳转', null, '/role/role_assign', 6, '3', '0', null, '1', null);
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('164', 'role_list', 'role', '[0],[system],[role],', '角色列表', null, '/role/list', 7, '3', '0', null, '1', null);
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('165', 'to_assign_role', 'mgr', '[0],[system],[mgr],', '分配角色跳转', null, '/mgr/role_assign', 8, '3', '0', null, '1', null);
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('166', 'to_user_edit', 'mgr', '[0],[system],[mgr],', '编辑用户跳转', null, '/mgr/user_edit', 9, '3', '0', null, '1', null);
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('167', 'mgr_list', 'mgr', '[0],[system],[mgr],', '用户列表', null, '/mgr/list', 10, '3', '0', null, '1', null);
commit;
prompt 55 records loaded
prompt Loading SYS_RELATION...
insert into SYS_RELATION (ID, MENUID, ROLEID)
values ('3377', '105', '5');
insert into SYS_RELATION (ID, MENUID, ROLEID)
values ('3378', '106', '5');
insert into SYS_RELATION (ID, MENUID, ROLEID)
values ('3379', '107', '5');
insert into SYS_RELATION (ID, MENUID, ROLEID)
values ('3380', '108', '5');
insert into SYS_RELATION (ID, MENUID, ROLEID)
values ('3381', '109', '5');
insert into SYS_RELATION (ID, MENUID, ROLEID)
values ('3382', '110', '5');
insert into SYS_RELATION (ID, MENUID, ROLEID)
values ('3383', '111', '5');
insert into SYS_RELATION (ID, MENUID, ROLEID)
values ('3384', '112', '5');
insert into SYS_RELATION (ID, MENUID, ROLEID)
values ('3385', '113', '5');
insert into SYS_RELATION (ID, MENUID, ROLEID)
values ('3386', '114', '5');
insert into SYS_RELATION (ID, MENUID, ROLEID)
values ('3387', '115', '5');
insert into SYS_RELATION (ID, MENUID, ROLEID)
values ('3388', '116', '5');
insert into SYS_RELATION (ID, MENUID, ROLEID)
values ('3389', '117', '5');
insert into SYS_RELATION (ID, MENUID, ROLEID)
values ('3390', '118', '5');
insert into SYS_RELATION (ID, MENUID, ROLEID)
values ('3391', '119', '5');
insert into SYS_RELATION (ID, MENUID, ROLEID)
values ('3392', '120', '5');
insert into SYS_RELATION (ID, MENUID, ROLEID)
values ('3393', '121', '5');
insert into SYS_RELATION (ID, MENUID, ROLEID)
values ('3394', '122', '5');
insert into SYS_RELATION (ID, MENUID, ROLEID)
values ('3395', '150', '5');
insert into SYS_RELATION (ID, MENUID, ROLEID)
values ('3396', '151', '5');
insert into SYS_RELATION (ID, MENUID, ROLEID)
values ('3679', '105', '1');
insert into SYS_RELATION (ID, MENUID, ROLEID)
values ('3680', '106', '1');
insert into SYS_RELATION (ID, MENUID, ROLEID)
values ('3681', '107', '1');
insert into SYS_RELATION (ID, MENUID, ROLEID)
values ('3682', '108', '1');
insert into SYS_RELATION (ID, MENUID, ROLEID)
values ('3683', '109', '1');
insert into SYS_RELATION (ID, MENUID, ROLEID)
values ('3684', '110', '1');
insert into SYS_RELATION (ID, MENUID, ROLEID)
values ('3685', '111', '1');
insert into SYS_RELATION (ID, MENUID, ROLEID)
values ('3686', '112', '1');
insert into SYS_RELATION (ID, MENUID, ROLEID)
values ('3687', '113', '1');
insert into SYS_RELATION (ID, MENUID, ROLEID)
values ('3688', '165', '1');
insert into SYS_RELATION (ID, MENUID, ROLEID)
values ('3689', '166', '1');
insert into SYS_RELATION (ID, MENUID, ROLEID)
values ('3690', '167', '1');
insert into SYS_RELATION (ID, MENUID, ROLEID)
values ('3691', '114', '1');
insert into SYS_RELATION (ID, MENUID, ROLEID)
values ('3692', '115', '1');
insert into SYS_RELATION (ID, MENUID, ROLEID)
values ('3693', '116', '1');
insert into SYS_RELATION (ID, MENUID, ROLEID)
values ('3694', '117', '1');
insert into SYS_RELATION (ID, MENUID, ROLEID)
values ('3695', '118', '1');
insert into SYS_RELATION (ID, MENUID, ROLEID)
values ('3696', '162', '1');
insert into SYS_RELATION (ID, MENUID, ROLEID)
values ('3697', '163', '1');
insert into SYS_RELATION (ID, MENUID, ROLEID)
values ('3698', '164', '1');
insert into SYS_RELATION (ID, MENUID, ROLEID)
values ('3699', '119', '1');
insert into SYS_RELATION (ID, MENUID, ROLEID)
values ('3700', '120', '1');
insert into SYS_RELATION (ID, MENUID, ROLEID)
values ('3701', '121', '1');
insert into SYS_RELATION (ID, MENUID, ROLEID)
values ('3702', '122', '1');
insert into SYS_RELATION (ID, MENUID, ROLEID)
values ('3703', '150', '1');
insert into SYS_RELATION (ID, MENUID, ROLEID)
values ('3704', '151', '1');
insert into SYS_RELATION (ID, MENUID, ROLEID)
values ('3705', '128', '1');
insert into SYS_RELATION (ID, MENUID, ROLEID)
values ('3706', '134', '1');
insert into SYS_RELATION (ID, MENUID, ROLEID)
values ('3707', '158', '1');
insert into SYS_RELATION (ID, MENUID, ROLEID)
values ('3708', '159', '1');
insert into SYS_RELATION (ID, MENUID, ROLEID)
values ('3709', '130', '1');
insert into SYS_RELATION (ID, MENUID, ROLEID)
values ('3710', '131', '1');
insert into SYS_RELATION (ID, MENUID, ROLEID)
values ('3711', '135', '1');
insert into SYS_RELATION (ID, MENUID, ROLEID)
values ('3712', '136', '1');
insert into SYS_RELATION (ID, MENUID, ROLEID)
values ('3713', '137', '1');
insert into SYS_RELATION (ID, MENUID, ROLEID)
values ('3714', '152', '1');
insert into SYS_RELATION (ID, MENUID, ROLEID)
values ('3715', '153', '1');
insert into SYS_RELATION (ID, MENUID, ROLEID)
values ('3716', '154', '1');
insert into SYS_RELATION (ID, MENUID, ROLEID)
values ('3717', '132', '1');
insert into SYS_RELATION (ID, MENUID, ROLEID)
values ('3718', '138', '1');
insert into SYS_RELATION (ID, MENUID, ROLEID)
values ('3719', '139', '1');
insert into SYS_RELATION (ID, MENUID, ROLEID)
values ('3720', '140', '1');
insert into SYS_RELATION (ID, MENUID, ROLEID)
values ('3721', '155', '1');
insert into SYS_RELATION (ID, MENUID, ROLEID)
values ('3722', '156', '1');
insert into SYS_RELATION (ID, MENUID, ROLEID)
values ('3723', '157', '1');
insert into SYS_RELATION (ID, MENUID, ROLEID)
values ('3724', '133', '1');
insert into SYS_RELATION (ID, MENUID, ROLEID)
values ('3725', '160', '1');
insert into SYS_RELATION (ID, MENUID, ROLEID)
values ('3726', '161', '1');
insert into SYS_RELATION (ID, MENUID, ROLEID)
values ('3727', '141', '1');
insert into SYS_RELATION (ID, MENUID, ROLEID)
values ('3728', '142', '1');
insert into SYS_RELATION (ID, MENUID, ROLEID)
values ('3729', '143', '1');
insert into SYS_RELATION (ID, MENUID, ROLEID)
values ('3730', '144', '1');
insert into SYS_RELATION (ID, MENUID, ROLEID)
values ('3731', '148', '1');
insert into SYS_RELATION (ID, MENUID, ROLEID)
values ('3732', '145', '1');
insert into SYS_RELATION (ID, MENUID, ROLEID)
values ('3733', '149', '1');
insert into SYS_RELATION (ID, MENUID, ROLEID)
values ('3734', '168', '1');
insert into SYS_RELATION (ID, MENUID, ROLEID)
values ('3735', '169', '1');
insert into SYS_RELATION (ID, MENUID, ROLEID)
values ('3736', '170', '1');
commit;
prompt 78 records loaded
prompt Loading SYS_ROLE...
insert into SYS_ROLE (ID, NUM, PID, NAME, DEPTID, TIPS, VERSION)
values ('d690d5a7f3ba4cb1bec35556ba25f19', null, '1', '2', '25', '2', null);
insert into SYS_ROLE (ID, NUM, PID, NAME, DEPTID, TIPS, VERSION)
values ('1', '1', '0', '超级管理员', '24', 'administrator', 1);
insert into SYS_ROLE (ID, NUM, PID, NAME, DEPTID, TIPS, VERSION)
values ('qwq', '2', '1', '临时', '26', 'temp', null);
commit;
prompt 3 records loaded
prompt Loading SYS_USER...
insert into SYS_USER (ID, AVATAR, ACCOUNT, PASSWORD, SALT, NAME, BIRTHDAY, SEX, EMAIL, PHONE, ROLEID, DEPTID, STATUS, CREATETIME, VERSION)
values ('1e7176c5e7804c8f87f56100cb39cd3', null, 'army', 'd5754387f54b21a3ac6d6daf071273b8', 'tl9ii', 'army', to_date('04-08-2018', 'dd-mm-yyyy'), '1', null, '1', null, '25', '1', to_date('04-08-2018 09:14:58', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into SYS_USER (ID, AVATAR, ACCOUNT, PASSWORD, SALT, NAME, BIRTHDAY, SEX, EMAIL, PHONE, ROLEID, DEPTID, STATUS, CREATETIME, VERSION)
values ('c11a41e9d78145d3971b54fa45a196e', null, 'Q', '58506e087faf10810e655ddec70c082f', 'oiuum', 'Q', to_date('22-08-2018', 'dd-mm-yyyy'), '1', null, '1', '1', '26', '3', to_date('04-08-2018 09:23:39', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into SYS_USER (ID, AVATAR, ACCOUNT, PASSWORD, SALT, NAME, BIRTHDAY, SEX, EMAIL, PHONE, ROLEID, DEPTID, STATUS, CREATETIME, VERSION)
values ('0f703e24e51e48acb22979d29aa7073', null, '11', '5ba6773c06f988befb7a677660c7e879', '73wxj', '11', to_date('06-03-2018', 'dd-mm-yyyy'), '1', null, '110', '1', '24', '3', to_date('23-03-2018 14:55:54', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into SYS_USER (ID, AVATAR, ACCOUNT, PASSWORD, SALT, NAME, BIRTHDAY, SEX, EMAIL, PHONE, ROLEID, DEPTID, STATUS, CREATETIME, VERSION)
values ('aa', '06854ff8-1e8f-40d2-afff-80b862c794ad.jpg', 'admin', 'ecfadcde9305f8891bcfe5a1e28c253e', '8pgby', 'aa', null, '2', 'sn93@qq.com', '18200000000', '1', '27', '1', null, 25);
insert into SYS_USER (ID, AVATAR, ACCOUNT, PASSWORD, SALT, NAME, BIRTHDAY, SEX, EMAIL, PHONE, ROLEID, DEPTID, STATUS, CREATETIME, VERSION)
values ('b7ccb23f97bc499089243a3ca7949c7', null, 'test', '6853a223ac7549beede2eb7b35707a31', 'us4yv', 'ceshi', to_date('21-03-2018', 'dd-mm-yyyy'), '1', null, null, '1', '24', '1', to_date('23-03-2018 10:38:05', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into SYS_USER (ID, AVATAR, ACCOUNT, PASSWORD, SALT, NAME, BIRTHDAY, SEX, EMAIL, PHONE, ROLEID, DEPTID, STATUS, CREATETIME, VERSION)
values ('60798b6ba23c4b95aa16fea19c981e1', null, 'TEST', 'e3df5eea971c92fc2c73e91c83a07cde', '3ci4d', '11', to_date('14-03-2018', 'dd-mm-yyyy'), '1', null, null, '1,5', '24', '3', to_date('23-03-2018 10:59:35', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into SYS_USER (ID, AVATAR, ACCOUNT, PASSWORD, SALT, NAME, BIRTHDAY, SEX, EMAIL, PHONE, ROLEID, DEPTID, STATUS, CREATETIME, VERSION)
values ('f49a952eccf74008a8af5a956be1f52', null, '1', '57a05705904bd75977877f8276eb2f42', 'hwi66', '1', null, '1', null, null, '9835773761af4f8aa55d4754010f1029', '25', '3', to_date('23-03-2018 14:56:32', 'dd-mm-yyyy hh24:mi:ss'), null);
commit;
prompt 7 records loaded
set feedback on
set define on
prompt Done.
