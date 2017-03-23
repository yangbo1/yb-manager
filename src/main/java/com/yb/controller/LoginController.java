package com.yb.controller;

import com.yb.pojo.Customer;
import com.yb.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

/**
 * Created by 杨波 on 2017/3/21.
 */
@Controller
@SessionAttributes("customer")
public class LoginController {
    @Autowired
    private LoginService loginService;
    @RequestMapping("/index")
    public String showIndex(){
        return "index";
    }

    @RequestMapping("/login")
//    @ResponseBody
    public String login(String username, String password, String logtype, ModelMap model){
        String result = loginService.getAdminOrCustomer(username,password,logtype);
        if("user".equals(result)){
             Customer customer = loginService.getCustomer(username);
             model.addAttribute("customer",customer);
        }
        return result;
    }


}
