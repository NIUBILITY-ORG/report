package cn.lz.controller;

import cn.lz.bean.LoginForm;
import cn.lz.service.LoginService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.LockedAccountException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

/**
 * Created by lz on 2018/3/22.
 * 登录和注册控制器
 */
@Controller
@RequestMapping("/login")
public class LoginController {

    @Autowired
    private LoginService loginService;

    @RequestMapping("/toLogin")
    public String toLogin(){

        return "/login/loginPage";
    }

    /**
     * 登录方法
     */
    @RequestMapping(value = "/in", method = RequestMethod.POST)
    public String login(Model model, @ModelAttribute LoginForm loginForm, HttpServletRequest request){

        //UsernamePasswordToken token = new UsernamePasswordToken(loginForm.getUsername(), loginForm.getPassword());

        //Subject subject = SecurityUtils.getSubject();

        /*try {
            subject.login(token);
            //查询用户
            List<Map<String, Object>> maps = loginService.queryUser(loginForm.getUsername());


            request.getSession().setAttribute("activeUser", loginForm);
        } catch (UnknownAccountException e){

            model.addAttribute("error", "用户名不存在，请注册用户！");
            return toLogin(model);
        } catch (AuthenticationException e) {

            model.addAttribute("error", "用户名或密码错误，请重新登录！");
            return toLogin(model);
        }*/

        return "redirect:/home";
    }

}
