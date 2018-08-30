package com.stylefeng.guns.modular.sso.controller;

import com.stylefeng.guns.core.base.controller.BaseController;
import com.stylefeng.guns.core.node.MenuNode;
import com.stylefeng.guns.core.shiro.AuthKit;
import com.stylefeng.guns.core.util.ApiMenuFilter;
import com.stylefeng.guns.modular.system.model.User;
import com.stylefeng.guns.modular.system.service.IMenuService;
import com.stylefeng.guns.modular.system.service.IUserService;
import com.stylefeng.sso.plugin.constants.SsoConstants;
import com.stylefeng.sso.plugin.properties.SsoProperties;
import com.stylefeng.sso.plugin.util.HttpUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

import static com.stylefeng.sso.plugin.constants.SsoConstants.LOGOUT_URL;

/**
 * 登录控制器
 *
 * @author fengshuonan
 * @Date 2017年1月10日 下午8:25:24
 */
@Controller
public class LoginController extends BaseController {

    private Logger log = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private IMenuService menuService;

    @Autowired
    private IUserService userService;

    @Autowired
    private SsoProperties ssoProperties;

    /**
     * 跳转到主页
     */
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index(Model model) {
        //获取菜单列表
        List<Integer> roleList = AuthKit.getUser().getRoleList();
        if (roleList == null || roleList.size() == 0) {
            model.addAttribute("tips", "该用户没有角色，无法登陆");
            return "/login.html";
        }
        List<MenuNode> menus = menuService.getMenusByRoleIds(roleList);
        List<MenuNode> titles = MenuNode.buildTitle(menus);
        titles = ApiMenuFilter.build(titles);

        model.addAttribute("titles", titles);

        //获取用户头像
        Integer id = AuthKit.getUser().getId();
        User user = userService.selectById(id);
        String avatar = user.getAvatar();
        model.addAttribute("avatar", avatar);

        return "/index.html";
    }

    /**
     * 跳转到登录页面
     */
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login() {
        if (AuthKit.isAuthenticated() || AuthKit.getUser() != null) {
            return REDIRECT + "/";
        } else {
            return "/login.html";
        }
    }

    /**
     * 退出登录
     */
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
