package com.stylefeng.sso.server.modular.service;

import com.baomidou.mybatisplus.service.IService;
import com.stylefeng.sso.plugin.model.LoginUser;
import com.stylefeng.sso.server.modular.entity.SysUser;

import java.util.Set;

/**
 * <p>
 * 用户信息表 服务类
 * </p>
 *
 * @author fengshuonan
 * @since 2018-01-09
 */
public interface ISysUserService extends IService<SysUser> {

    /**
     * 根据用户id获取用户信息
     */
    LoginUser getUserLoginInfo(Long userId);

    /**
     * 根据用户id获取拥有的权限
     */
    Set<String> getPermissionUrlsByUserId(Long userId);

}
