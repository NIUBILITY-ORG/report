package cn.lz.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by lz on 2018/3/23.
 */
@Controller
@RequestMapping("/home")
public class HomeController {


    @RequestMapping("")
    public String toHome(){
        System.out.println(123);
        return "/login/homePage";
    }
}
