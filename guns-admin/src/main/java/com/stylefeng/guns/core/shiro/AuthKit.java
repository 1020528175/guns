package com.stylefeng.guns.core.shiro;

import com.stylefeng.guns.core.common.constant.Const;
import com.stylefeng.guns.core.common.constant.factory.ConstantFactory;
import com.stylefeng.guns.core.support.HttpKit;
import com.stylefeng.guns.core.util.MD5Util;
import com.stylefeng.guns.core.util.ToolUtil;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Set;

/**
 * 登录鉴权工具集
 *
 * @author fengshuonan
 * @Date 2018/8/30 上午10:17
 */
public class AuthKit {

    private static final String NAMES_DELIMETER = ",";

    /**
     * shiro密码加密工具类
     *
     * @param credentials 密码
     * @param saltSource  密码盐
     */
    public static String md5(String credentials, String saltSource) {
        return MD5Util.encrypt(credentials + saltSource);
    }

    /**
     * 获取随机盐值
     */
    public static String getRandomSalt(int length) {
        return ToolUtil.getRandomString(length);
    }

    /**
     * 获取封装的 ShiroUser
     */
    public static ShiroUser getUser() {
        HttpSession session = HttpKit.getRequest().getSession();
        return (ShiroUser) session.getAttribute("loginUser");
    }

    /**
     * 验证当前用户是否属于该角色？,使用时与lacksRole 搭配使用
     *
     * @param roleName 角色名
     * @return 属于该角色：true，否则false
     */
    public static boolean hasRole(String roleName) {
        ShiroUser user = getUser();
        List<String> roleNames = user.getRoleNames();
        if (roleNames.contains(roleName)) {
            return true;
        } else {
            return false;
        }
    }

    /**
     * 与hasRole标签逻辑相反，当用户不属于该角色时验证通过。
     *
     * @param roleName 角色名
     * @return 不属于该角色：true，否则false
     */
    public static boolean lacksRole(String roleName) {
        return !hasRole(roleName);
    }

    /**
     * 验证当前用户是否属于以下任意一个角色。
     *
     * @param roleNames 角色列表
     * @return 属于:true,否则false
     */
    public static boolean hasAnyRoles(String roleNames) {
        ShiroUser user = getUser();
        boolean hasAnyRole = false;
        if (user != null && roleNames != null && roleNames.length() > 0) {
            for (String role : roleNames.split(NAMES_DELIMETER)) {
                if (hasRole(role.trim())) {
                    hasAnyRole = true;
                    break;
                }
            }
        }
        return hasAnyRole;
    }

    /**
     * 验证当前用户是否拥有指定权限,使用时与lacksPermission 搭配使用
     *
     * @param permission 权限名
     * @return 拥有权限：true，否则false
     */
    public static boolean hasPermission(String permission) {
        ShiroUser user = getUser();
        Set<String> permissionSet = user.getPermissionSet();
        if (permissionSet.contains(permission)) {
            return true;
        } else {
            return false;
        }
    }

    /**
     * 与hasPermission标签逻辑相反，当前用户没有制定权限时，验证通过。
     *
     * @param permission 权限名
     * @return 拥有权限：true，否则false
     */
    public static boolean lacksPermission(String permission) {
        return !hasPermission(permission);
    }

    /**
     * 已认证通过的用户。不包含已记住的用户，这是与user标签的区别所在。与notAuthenticated搭配使用
     *
     * @return 通过身份验证：true，否则false
     */
    public static boolean isAuthenticated() {
        if (getUser() == null) {
            return false;
        } else {
            return true;
        }
    }

    /**
     * 未认证通过用户，与authenticated标签相对应。与guest标签的区别是，该标签包含已记住用户。。
     *
     * @return 没有通过身份验证：true，否则false
     */
    public static boolean notAuthenticated() {
        return !isAuthenticated();
    }

    /**
     * 获取当前用户的部门数据范围的集合
     */
    public static List<Integer> getDeptDataScope() {
        Integer deptId = getUser().getDeptId();
        List<Integer> subDeptIds = ConstantFactory.me().getSubDeptId(deptId);
        subDeptIds.add(deptId);
        return subDeptIds;
    }

    /**
     * 判断当前用户是否是超级管理员
     */
    public static boolean isAdmin() {
        List<Integer> roleList = AuthKit.getUser().getRoleList();
        for (Integer integer : roleList) {
            String singleRoleTip = ConstantFactory.me().getSingleRoleTip(integer);
            if (singleRoleTip.equals(Const.ADMIN_NAME)) {
                return true;
            }
        }
        return false;
    }

}
