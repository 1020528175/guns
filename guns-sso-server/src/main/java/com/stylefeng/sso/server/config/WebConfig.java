package com.stylefeng.sso.server.config;

import com.stylefeng.sso.plugin.interceptor.SsoServerInterceptor;
import com.stylefeng.sso.plugin.properties.SsoProperties;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;


/**
 * <p>
 * WEB 初始化相关配置
 * </p>
 *
 * @author 青苗
 * @since 2017-08-08
 */
@ControllerAdvice
@Configuration
public class WebConfig extends WebMvcConfigurerAdapter {

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(new SsoServerInterceptor(ssoProperties())).addPathPatterns("/**").excludePathPatterns("/login", "/ssoApi/authToken", "/logout");
    }

    @Bean
    @ConfigurationProperties(prefix = SsoProperties.BEETLCONF_PREFIX)
    SsoProperties ssoProperties() {
        return new SsoProperties();
    }
}
