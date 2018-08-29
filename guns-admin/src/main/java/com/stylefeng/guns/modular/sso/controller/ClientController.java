package com.stylefeng.guns.modular.sso.controller;

import com.stylefeng.sso.plugin.constants.SsoConstants;
import com.stylefeng.sso.plugin.properties.SsoProperties;
import com.stylefeng.sso.plugin.util.HttpUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

import static com.stylefeng.sso.plugin.constants.SsoConstants.LOGOUT_URL;


/**
 * SSO登录演示
 *
 * @author fengshuonan
 * @Date 2018/8/29 下午3:36
 */
@Controller
public class ClientController {

    private Logger log = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private SsoProperties ssoProperties;

    @ResponseBody
    @RequestMapping("/login")
    public String login() {
        return "login success!";
    }

    @ResponseBody
    @RequestMapping("/token")
    public String token() {
        return "显示此页面为登录成功!";
    }

    @RequestMapping(LOGOUT_URL)
    public String logout(HttpServletRequest request, HttpServletResponse response) {

        HttpSession session = request.getSession();

        //跳转到sso服务器提交申请,注销会话
        String redirectUrl = ssoProperties.getServerUrl() + "/logout"
                + "?" + SsoConstants.REDIRECT_PARAM_NAME + "=" + HttpUtil.encodeUrl(HttpUtil.getRequestContextPath(request))
                + "&" + SsoConstants.TOKEN_PARAM_NAME + "=" + session.getAttribute(SsoConstants.SESSION_LOGIN_FLAG);
        try {
            response.sendRedirect(redirectUrl);
        } catch (IOException e) {
            log.error("退出跳转到服务器地址出错!", e);
        }
        return null;
    }
}