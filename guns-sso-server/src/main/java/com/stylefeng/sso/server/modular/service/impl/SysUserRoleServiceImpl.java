package com.stylefeng.sso.server.modular.service.impl;

import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.stylefeng.sso.server.modular.entity.SysUserRole;
import com.stylefeng.sso.server.modular.mapper.SysUserRoleMapper;
import com.stylefeng.sso.server.modular.service.ISysUserRoleService;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 用户-角色关联表 服务实现类
 * </p>
 *
 * @author fengshuonan
 * @since 2018-01-09
 */
@Service
public class SysUserRoleServiceImpl extends ServiceImpl<SysUserRoleMapper, SysUserRole> implements ISysUserRoleService {

}
