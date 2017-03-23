package com.yb.controller;

import com.yb.pojo.*;
import com.yb.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

/**
 * Created by 杨波 on 2017/3/23.
 */
@Controller
public class UserController {
    @Autowired
    private UserService userService;
    @RequestMapping("/myInfo")
    public String getMyInfoById(@RequestParam("id") Integer id, ModelMap model){
        Customer customer = userService.getmyInfoById(id);
        model.addAttribute("myInfo",customer);
        return "myInfo";
    }
    @RequestMapping("/myCall")
    public String getMyCallById(@RequestParam("id") Integer id, ModelMap model){
        List<Calldetails> list = userService.getMyCallById(id);
        model.addAttribute("list",list);
        return "myCall";
    }
    @RequestMapping("/myGprs")
    public String getMyGprsById(@RequestParam("id") Integer id, ModelMap model){
        List<Gprsdetails> list = userService.getMyGprsById(id);
        model.addAttribute("list",list);
        return "myGprs";
    }
    @RequestMapping("/myMessage")
    public String getMyMessageById(@RequestParam("id") Integer id, ModelMap model){
        List<Messagedetails> list = userService.getMyMessageById(id);
        model.addAttribute("list",list);
        return "myMessage";
    }
    @RequestMapping("/myBalance")
    public String getMyBalanceById(@RequestParam("id") Integer id, ModelMap model){
        Balance balance = userService.getMyBalanceById(id);
        model.addAttribute("myBalance",balance);
        return "myBalance";
    }
    @RequestMapping("/addBalance")
    public String getaddBalanceById(@RequestParam("id") Integer id, ModelMap model){
        Balance balance = userService.getMyBalanceById(id);
        model.addAttribute("myBalance",balance);
        return "addBalance";
    }
    @RequestMapping("/addMoney")
    public String addMoney(float addmoney,Integer baId,ModelMap model){
        Balance balance = userService.addMoney(addmoney,baId);
        model.addAttribute("myBalance",balance);
        return "addBalance";
    }
}
