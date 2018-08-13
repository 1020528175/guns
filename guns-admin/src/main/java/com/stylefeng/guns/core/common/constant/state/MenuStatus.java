package com.stylefeng.guns.core.common.constant.state;

/**
 * 菜单的状态
 *
 * @author fengshuonan
 * @Date 2017年1月22日 下午12:14:59
 */
public enum MenuStatus {

    ENABLE("1", "启用"),
    DISABLE("0", "禁用");

	String code;
    String message;

    MenuStatus(String code, String message) {
        this.code = code;
        this.message = message;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public static String valueOfs(String status) {
        if (status == null) {
            return "";
        } else {
            for (MenuStatus s : MenuStatus.values()) {
                if (s.getCode().equals(status) ) {
                    return s.getMessage();
                }
            }
            return "";
        }
    }
}
