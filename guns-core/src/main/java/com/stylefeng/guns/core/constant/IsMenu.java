package com.stylefeng.guns.core.constant;

/**
 * 是否是菜单的枚举
 *
 * @author fengshuonan
 * @date 2017年6月1日22:50:11
 */
public enum IsMenu {

    YES("1", "是"),
    NO("0", "不是");//不是菜单的是按钮

	String code;
    String message;

    IsMenu(String code, String message) {
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
            for (IsMenu s : IsMenu.values()) {
                if (s.getCode().equals(status)) {
                    return s.getMessage();
                }
            }
            return "";
        }
    }
}
