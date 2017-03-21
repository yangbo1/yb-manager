package com.yb.controller;

import com.yb.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by 杨波 on 2017/3/21.
 */
@Controller
public class LoginController {
    @Autowired
    private LoginService loginService;
    @RequestMapping("/index")
    public String showIndex(){
        return "index";
    }
    @RequestMapping("/login")
    @ResponseBody
    public String login(String username, String password, String logtype){
        String result = loginService.getAdminOrCustomer(username,password,logtype);
        return result;
    }
}
