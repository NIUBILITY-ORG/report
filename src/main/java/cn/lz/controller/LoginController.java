package cn.lz.controller;

import cn.lz.bean.LoginForm;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.LockedAccountException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by lz on 2018/3/22.
 * 登录和注册控制器
 */
@Controller
@RequestMapping("/login")
public class LoginController {

    @RequestMapping("/toLogin")
    public String toLogin(Model model){

        return "/login/loginPage";
    }

    /**
     * 登录方法
     */
    @RequestMapping(value = "/in", method = RequestMethod.POST)
    public String login(Model model, @ModelAttribute LoginForm loginForm, HttpServletRequest request){

        UsernamePasswordToken token = new UsernamePasswordToken(loginForm.getUsername(), loginForm.getPassword());

        Subject subject = SecurityUtils.getSubject();

        try {
            subject.login(token);
            //查询用户
            //BIConversion.User user = userDao.findByusername(loginForm.getUsername());

            request.getSession().setAttribute("activeUser", loginForm);
        } catch (UnknownAccountException e){

            model.addAttribute("error", "用户名不存在，请注册用户！");
            return toLogin(model);
        } catch (LockedAccountException e) {

            model.addAttribute("error", "用户被禁用，请联系管理员！");
            return toLogin(model);
        } catch (AuthenticationException e) {

            model.addAttribute("error", "用户名或密码错误，请重新登录！");
            return toLogin(model);
        }

        return "redirect:/home";
    }

}
