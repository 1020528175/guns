package com.stylefeng.guns.modular.sso.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


/**
 * SSO登录演示
 *
 * @author fengshuonan
 * @Date 2018/8/29 下午3:36
 */
@Controller
public class ClientController {

    @ResponseBody
    @RequestMapping("/token")
    public String token() {
        return "显示此页面为登录成功!";
    }
}