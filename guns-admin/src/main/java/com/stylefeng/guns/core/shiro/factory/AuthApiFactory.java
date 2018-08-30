package com.stylefeng.guns.core.shiro.factory;

import com.stylefeng.guns.core.common.constant.factory.ConstantFactory;
import com.stylefeng.guns.core.util.Convert;
import com.stylefeng.guns.core.util.SpringContextHolder;
import com.stylefeng.guns.core.util.ToolUtil;
import com.stylefeng.guns.modular.system.dao.MenuMapper;
import com.stylefeng.guns.modular.system.dao.UserMapper;
import com.stylefeng.guns.modular.system.model.User;
import com.stylefeng.sso.plugin.api.AuthApi;
import com.stylefeng.sso.plugin.model.LoginUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.DependsOn;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Service
@DependsOn("springContextHolder")
@Transactional(readOnly = true)
public class AuthApiFactory implements AuthApi {

    @Autowired
    private UserMapper userMapper;

    @Autowired
    private MenuMapper menuMapper;

    public static AuthApi me() {
        return SpringContextHolder.getBean(AuthApi.class);
    }

    @Override
    public LoginUser getLoginUser(Integer userId) {
        User user = userMapper.selectById(userId);
        return shiroUser(user);
    }

    private LoginUser shiroUser(User user) {
        LoginUser loginUser = new LoginUser();

        loginUser.setId(user.getId());
        loginUser.setAccount(user.getAccount());
        loginUser.setDeptId(user.getDeptid());
        loginUser.setDeptName(ConstantFactory.me().getDeptName(user.getDeptid()));
        loginUser.setName(user.getName());

        Integer[] roleArray = Convert.toIntArray(user.getRoleid());
        List<Integer> roleList = new ArrayList<>();
        List<String> roleNameList = new ArrayList<>();
        for (int roleId : roleArray) {
            roleList.add(roleId);
            roleNameList.add(ConstantFactory.me().getSingleRoleTip(roleId));
        }
        loginUser.setRoleList(roleList);
        loginUser.setRoleNames(roleNameList);

        Set<String> permissionSet = new HashSet<>();

        for (Integer roleId : roleList) {
            List<String> permissions = this.findPermissionsByRoleId(roleId);
            if (permissions != null) {
                for (String permission : permissions) {
                    if (ToolUtil.isNotEmpty(permission)) {
                        permissionSet.add(permission);
                    }
                }
            }
        }
        loginUser.setPermissionSet(permissionSet);

        return loginUser;
    }

    @Override
    public List<String> findPermissionsByRoleId(Integer roleId) {
        return menuMapper.getResUrlsByRoleId(roleId);
    }

    @Override
    public String findRoleNameByRoleId(Integer roleId) {
        return ConstantFactory.me().getSingleRoleTip(roleId);
    }

}
