prompt PL/SQL Developer import file
prompt Created on 2018��8��4�� by army
set feedback off
set define off
prompt Loading SYS_DEPT...
insert into SYS_DEPT (ID, NUM, PID, PIDS, SIMPLENAME, FULLNAME, TIPS, VERSION)
values ('24', 1, '0', '[0],', '�ܹ�˾', '�ܹ�˾', null, null);
insert into SYS_DEPT (ID, NUM, PID, PIDS, SIMPLENAME, FULLNAME, TIPS, VERSION)
values ('25', 2, '24', '[0],[24],', '������', '������', null, null);
insert into SYS_DEPT (ID, NUM, PID, PIDS, SIMPLENAME, FULLNAME, TIPS, VERSION)
values ('26', 3, '24', '[0],[24],', '��Ӫ��', '��Ӫ��', null, null);
insert into SYS_DEPT (ID, NUM, PID, PIDS, SIMPLENAME, FULLNAME, TIPS, VERSION)
values ('27', 4, '24', '[0],[24],', 'ս�Բ�', 'ս�Բ�', null, null);
commit;
prompt 4 records loaded
prompt Loading SYS_DICT...
insert into SYS_DICT (ID, NUM, PID, NAME, TIPS, CODE)
values ('50', '0', '0', '�Ա�', null, 'sys_sex');
insert into SYS_DICT (ID, NUM, PID, NAME, TIPS, CODE)
values ('51', '1', '50', '��', null, '1');
insert into SYS_DICT (ID, NUM, PID, NAME, TIPS, CODE)
values ('52', '2', '50', 'Ů', null, '2');
insert into SYS_DICT (ID, NUM, PID, NAME, TIPS, CODE)
values ('53', '0', '0', '״̬', null, 'sys_state');
insert into SYS_DICT (ID, NUM, PID, NAME, TIPS, CODE)
values ('54', '1', '53', '����', null, '1');
insert into SYS_DICT (ID, NUM, PID, NAME, TIPS, CODE)
values ('55', '2', '53', '����', null, '2');
insert into SYS_DICT (ID, NUM, PID, NAME, TIPS, CODE)
values ('56', '0', '0', '�˺�״̬', null, 'account_state');
insert into SYS_DICT (ID, NUM, PID, NAME, TIPS, CODE)
values ('57', '1', '56', '����', null, '1');
insert into SYS_DICT (ID, NUM, PID, NAME, TIPS, CODE)
values ('58', '2', '56', '����', null, '2');
insert into SYS_DICT (ID, NUM, PID, NAME, TIPS, CODE)
values ('59', '3', '56', '��ɾ��', null, '3');
commit;
prompt 10 records loaded
prompt Loading SYS_MENU...
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('105', 'system', '0', '[0],', 'ϵͳ����', 'fa-user', '#', 4, '1', '1', null, '1', '1');
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('106', 'mgr', 'system', '[0],[system],', '�û�����', null, '/mgr', 1, '2', '1', null, '1', '0');
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('107', 'mgr_add', 'mgr', '[0],[system],[mgr],', '����û�', null, '/mgr/add', 1, '3', '0', null, '1', '0');
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('108', 'mgr_edit', 'mgr', '[0],[system],[mgr],', '�޸��û�', null, '/mgr/edit', 2, '3', '0', null, '1', '0');
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('109', 'mgr_delete', 'mgr', '[0],[system],[mgr],', 'ɾ���û�', null, '/mgr/delete', 3, '3', '0', null, '1', '0');
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('110', 'mgr_reset', 'mgr', '[0],[system],[mgr],', '��������', null, '/mgr/reset', 4, '3', '0', null, '1', '0');
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('111', 'mgr_freeze', 'mgr', '[0],[system],[mgr],', '�����û�', null, '/mgr/freeze', 5, '3', '0', null, '1', '0');
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('112', 'mgr_unfreeze', 'mgr', '[0],[system],[mgr],', '��������û�', null, '/mgr/unfreeze', 6, '3', '0', null, '1', '0');
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('113', 'mgr_setRole', 'mgr', '[0],[system],[mgr],', '�����ɫ', null, '/mgr/setRole', 7, '3', '0', null, '1', '0');
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('114', 'role', 'system', '[0],[system],', '��ɫ����', null, '/role', 2, '2', '1', null, '1', '0');
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('115', 'role_add', 'role', '[0],[system],[role],', '��ӽ�ɫ', null, '/role/add', 1, '3', '0', null, '1', '0');
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('116', 'role_edit', 'role', '[0],[system],[role],', '�޸Ľ�ɫ', null, '/role/edit', 2, '3', '0', null, '1', '0');
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('117', 'role_remove', 'role', '[0],[system],[role],', 'ɾ����ɫ', null, '/role/remove', 3, '3', '0', null, '1', '0');
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('118', 'role_setAuthority', 'role', '[0],[system],[role],', '����Ȩ��', null, '/role/setAuthority', 4, '3', '0', null, '1', '0');
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('119', 'menu', 'system', '[0],[system],', '�˵�����', null, '/menu', 4, '2', '1', null, '1', '0');
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('120', 'menu_add', 'menu', '[0],[system],[menu],', '��Ӳ˵�', null, '/menu/add', 1, '3', '0', null, '1', '0');
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('121', 'menu_edit', 'menu', '[0],[system],[menu],', '�޸Ĳ˵�', null, '/menu/edit', 2, '3', '0', null, '1', '0');
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('122', 'menu_remove', 'menu', '[0],[system],[menu],', 'ɾ���˵�', null, '/menu/remove', 3, '3', '0', null, '1', '0');
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('128', 'log', 'system', '[0],[system],', 'ҵ����־', null, '/log', 6, '2', '1', null, '1', '0');
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('130', 'druid', 'system', '[0],[system],', '��ع���', null, '/druid', 7, '2', '1', null, '1', null);
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('131', 'dept', 'system', '[0],[system],', '���Ź���', null, '/dept', 3, '2', '1', null, '1', null);
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('132', 'dict', 'system', '[0],[system],', '�ֵ����', null, '/dict', 4, '2', '1', null, '1', null);
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('133', 'loginLog', 'system', '[0],[system],', '��¼��־', null, '/loginLog', 6, '2', '1', null, '1', null);
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('134', 'log_clean', 'log', '[0],[system],[log],', '�����־', null, '/log/delLog', 3, '3', '0', null, '1', null);
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('135', 'dept_add', 'dept', '[0],[system],[dept],', '��Ӳ���', null, '/dept/add', 1, '3', '0', null, '1', null);
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('136', 'dept_update', 'dept', '[0],[system],[dept],', '�޸Ĳ���', null, '/dept/update', 1, '3', '0', null, '1', null);
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('137', 'dept_delete', 'dept', '[0],[system],[dept],', 'ɾ������', null, '/dept/delete', 1, '3', '0', null, '1', null);
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('138', 'dict_add', 'dict', '[0],[system],[dict],', '����ֵ�', null, '/dict/add', 1, '3', '0', null, '1', null);
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('139', 'dict_update', 'dict', '[0],[system],[dict],', '�޸��ֵ�', null, '/dict/update', 1, '3', '0', null, '1', null);
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('140', 'dict_delete', 'dict', '[0],[system],[dict],', 'ɾ���ֵ�', null, '/dict/delete', 1, '3', '0', null, '1', null);
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('141', 'notice', 'system', '[0],[system],', '֪ͨ����', null, '/notice', 9, '2', '1', null, '1', null);
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('142', 'notice_add', 'notice', '[0],[system],[notice],', '���֪ͨ', null, '/notice/add', 1, '3', '0', null, '1', null);
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('143', 'notice_update', 'notice', '[0],[system],[notice],', '�޸�֪ͨ', null, '/notice/update', 2, '3', '0', null, '1', null);
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('144', 'notice_delete', 'notice', '[0],[system],[notice],', 'ɾ��֪ͨ', null, '/notice/delete', 3, '3', '0', null, '1', null);
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('145', 'hello', '0', '[0],', '֪ͨ', 'fa-rocket', '/notice/hello', 1, '1', '1', null, '1', null);
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('148', 'code', '0', '[0],', '��������', 'fa-code', '/code', 3, '1', '1', null, '1', null);
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('149', 'api_mgr', '0', '[0],', '�ӿ��ĵ�', 'fa-leaf', '/swagger-ui.html', 2, '1', '1', null, '1', null);
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('150', 'to_menu_edit', 'menu', '[0],[system],[menu],', '�˵��༭��ת', null, '/menu/menu_edit', 4, '3', '0', null, '1', null);
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('151', 'menu_list', 'menu', '[0],[system],[menu],', '�˵��б�', null, '/menu/list', 5, '3', '0', null, '1', null);
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('152', 'to_dept_update', 'dept', '[0],[system],[dept],', '�޸Ĳ�����ת', null, '/dept/dept_update', 4, '3', '0', null, '1', null);
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('153', 'dept_list', 'dept', '[0],[system],[dept],', '�����б�', null, '/dept/list', 5, '3', '0', null, '1', null);
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('154', 'dept_detail', 'dept', '[0],[system],[dept],', '��������', null, '/dept/detail', 6, '3', '0', null, '1', null);
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('155', 'to_dict_edit', 'dict', '[0],[system],[dict],', '�޸Ĳ˵���ת', null, '/dict/dict_edit', 4, '3', '0', null, '1', null);
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('156', 'dict_list', 'dict', '[0],[system],[dict],', '�ֵ��б�', null, '/dict/list', 5, '3', '0', null, '1', null);
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('157', 'dict_detail', 'dict', '[0],[system],[dict],', '�ֵ�����', null, '/dict/detail', 6, '3', '0', null, '1', null);
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('158', 'log_list', 'log', '[0],[system],[log],', '��־�б�', null, '/log/list', 2, '3', '0', null, '1', null);
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('159', 'log_detail', 'log', '[0],[system],[log],', '��־����', null, '/log/detail', 3, '3', '0', null, '1', null);
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('160', 'del_login_log', 'loginLog', '[0],[system],[loginLog],', '��յ�¼��־', null, '/loginLog/delLoginLog', 1, '3', '0', null, '1', null);
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('161', 'login_log_list', 'loginLog', '[0],[system],[loginLog],', '��¼��־�б�', null, '/loginLog/list', 2, '3', '0', null, '1', null);
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('162', 'to_role_edit', 'role', '[0],[system],[role],', '�޸Ľ�ɫ��ת', null, '/role/role_edit', 5, '3', '0', null, '1', null);
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('163', 'to_role_assign', 'role', '[0],[system],[role],', '��ɫ������ת', null, '/role/role_assign', 6, '3', '0', null, '1', null);
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('164', 'role_list', 'role', '[0],[system],[role],', '��ɫ�б�', null, '/role/list', 7, '3', '0', null, '1', null);
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('165', 'to_assign_role', 'mgr', '[0],[system],[mgr],', '�����ɫ��ת', null, '/mgr/role_assign', 8, '3', '0', null, '1', null);
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('166', 'to_user_edit', 'mgr', '[0],[system],[mgr],', '�༭�û���ת', null, '/mgr/user_edit', 9, '3', '0', null, '1', null);
insert into SYS_MENU (ID, CODE, PCODE, PCODES, NAME, ICON, URL, NUM, LEVELS, ISMENU, TIPS, STATUS, ISOPEN)
values ('167', 'mgr_list', 'mgr', '[0],[system],[mgr],', '�û��б�', null, '/mgr/list', 10, '3', '0', null, '1', null);
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
values ('1', '1', '0', '��������Ա', '24', 'administrator', 1);
insert into SYS_ROLE (ID, NUM, PID, NAME, DEPTID, TIPS, VERSION)
values ('qwq', '2', '1', '��ʱ', '26', 'temp', null);
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
