package com.stylefeng.guns.core.common.constant.factory;

import com.stylefeng.guns.modular.system.model.Dict;

import java.util.List;

/**
 * 常量生产工厂的接口
 *
 * @author fengshuonan
 * @date 2017-06-14 21:12
 */
public interface IConstantFactory {

    /**
     * 根据用户id获取用户名称
     *
     * @author stylefeng
     * @Date 2017/5/9 23:41
     */
    String getUserNameById(String userId);

    /**
     * 根据用户id获取用户账号
     *
     * @author stylefeng
     * @date 2017年5月16日21:55:371
     */
    String getUserAccountById(String userId);

    /**
     * 通过角色ids获取角色名称
     */
    String getRoleName(String roleIds);

    /**
     * 通过角色id获取角色名称
     */
    String getSingleRoleName(String roleId);

    /**
     * 通过角色id获取角色英文名称
     */
    String getSingleRoleTip(String roleId);

    /**
     * 获取部门名称
     */
    String getDeptName(String deptId);

    /**
     * 获取菜单的名称们(多个)
     */
    String getMenuNames(String menuIds);

    /**
     * 获取菜单名称
     */
    String getMenuName(String menuId);

    /**
     * 获取菜单名称通过编号
     */
    String getMenuNameByCode(String code);

    /**
     * 获取字典名称
     */
    String getDictName(String dictId);

    /**
     * 获取通知标题
     */
    String getNoticeTitle(String dictId);

    /**
     * 根据字典名称和字典中的值获取对应的名称
     */
    String getDictsByName(String name, String val);

    /**
     * 获取性别名称
     */
    String getSexName(String sex);

    /**
     * 获取用户登录状态
     */
    String getStatusName(String status);

    /**
     * 获取菜单状态
     */
    String getMenuStatusName(String status);

    /**
     * 查询字典
     */
    List<Dict> findInDict(String id);

    /**
     * 获取被缓存的对象(用户删除业务)
     */
    String getCacheObject(String para);

    /**
     * 获取子部门id
     */
    List<String> getSubDeptId(String deptid);

    /**
     * 获取所有父部门id
     */
    List<String> getParentDeptIds(String deptid);


}
