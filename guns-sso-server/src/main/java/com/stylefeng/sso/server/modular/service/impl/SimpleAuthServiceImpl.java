package com.stylefeng.sso.server.modular.service.impl;

import com.baomidou.mybatisplus.toolkit.IdWorker;
import com.stylefeng.sso.plugin.api.SsoApi;
import com.stylefeng.sso.plugin.constants.SsoConstants;
import com.stylefeng.sso.plugin.model.LoginUser;
import com.stylefeng.sso.plugin.model.SsoResponse;
import com.stylefeng.sso.plugin.service.AuthService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/**
 * auth服务接口最简单实现
 *
 * @author fengshuonan
 * @date 2018-02-03 22:56
 */
@Service
public class SimpleAuthServiceImpl implements AuthService {

    Logger log = LoggerFactory.getLogger(this.getClass());

    Map<String, Object> cache = new HashMap<>();

    Set<String> ssoClients = new HashSet<>();

    @Autowired
    RestTemplate restTemplate;

    @Override
    public String checkUserLogin(String userName, String password) {
        if ("admin".equalsIgnoreCase(userName) && "admin".equalsIgnoreCase(password)) {
            return "abc";
        } else {
            return null;
        }
    }

    @Override
    public String createToken(String userId) {
        String token = IdWorker.get32UUID();
        LoginUser loginUserByUserId = this.getLoginUserByUserId(userId);
        cache.put(token, loginUserByUserId);
        return token;
    }

    @Override
    public boolean checkToken(HttpServletRequest request, String token, String clientAddr) {
        if (cache.containsKey(token)) {
            recordSSOClient(clientAddr);
            return true;
        } else {
            return false;
        }
    }

    @Override
    public LoginUser getLoginUserByToken(String token) {
        return (LoginUser) cache.get(token);
    }

    @Override
    public LoginUser getLoginUserByUserId(String userId) {
        LoginUser loginUser = new LoginUser();
        loginUser.setAccount("aaa");
        loginUser.setEmail("sn93@qq.com");
        loginUser.setPhoneNumber("123123");
        loginUser.setStatus(2);
        loginUser.setId(12321L);
        return loginUser;
    }

    @Override
    public void recordSSOClient(String clientAddr) {
        ssoClients.add(clientAddr);
    }

    @Override
    public Set<String> getAllSsoClientUrl() {
        return ssoClients;
    }

    @Override
    public void logoutAllSsoClients(String token) {
        for (String ssoClientUrl : ssoClients) {
            String url = ssoClientUrl + SsoApi.CLEAR_TOKEN_URL + "?" + SsoConstants.TOKEN_PARAM_NAME + "=" + token;

            try {
                restTemplate.getForObject(url, SsoResponse.class);
            } catch (Exception e) {
                log.error("发送客户端注销token请求出错!", e);
            }
        }
    }
}
