package com.stylefeng.guns.core.common.constant.state;

/**
 * 管理员的状态
 *
 * @author fengshuonan
 * @Date 2017年1月10日 下午9:54:13
 */
public enum ManagerStatus {

    OK("1", "启用"), FREEZED("2", "冻结"), DELETED("3", "被删除");

	String code;
    String message;

    ManagerStatus(String code, String message) {
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

    public static String valueOfs(String value) {
        if (value == null) {
            return "";
        } else {
            for (ManagerStatus ms : ManagerStatus.values()) {
                if (ms.getCode().equals(value)) {
                    return ms.getMessage();
                }
            }
            return "";
        }
    }
}
