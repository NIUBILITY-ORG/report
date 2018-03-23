package cn.lz.controller;

import cn.lz.bean.LoginForm;
import cn.lz.service.LoginService;
import cn.lz.utils.ResourceUtil;
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

        //判断是否是管理员登录
        if(loginForm.getUsername().equals(ResourceUtil.getAdminName())){
            if (loginForm.getPassword().equals(ResourceUtil.getAdminPassword())){
                LoginForm user = new LoginForm();
                user.setUsername(loginForm.getUsername());
                user.setRole("admin");
                request.getSession().setAttribute("activeUser",user);
                model.addAttribute("msg","登录成功！");
                return "/login/home";
            } else {
                model.addAttribute("msg","密码错误！");
                return "redirect:/login/toLogin";
            }
        } else {
            List<Map<String, Object>> maps = loginService.queryUser(loginForm.getUsername());
            if(maps.size() > 0){
                Map<String, Object> a = maps.get(0);
                if(a.get("password").equals(loginForm.getPassword())){
                    LoginForm user = new LoginForm();
                    user.setUsername(loginForm.getUsername());
                    user.setRole("user");
                    request.getSession().setAttribute("activeUser",user);
                    model.addAttribute("msg","登录成功！");
                    return "/login/home";
                } else {
                    model.addAttribute("msg","密码错误！");
                    return "redirect:/login/toLogin";
                }
            } else {
                model.addAttribute("msg","用户不存在！");
                return "redirect:/login/toLogin";
            }
        }

    }

}
