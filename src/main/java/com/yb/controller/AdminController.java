package com.yb.controller;

import com.yb.pojo.Calldetails;
import com.yb.pojo.Customer;
import com.yb.pojo.Gprsdetails;
import com.yb.pojo.Messagedetails;
import com.yb.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

/**
 * Created by 杨波 on 2017/3/22.
 */
@Controller
public class AdminController {
    @Autowired
    private AdminService adminService;
    @RequestMapping("/listCustomer")
    public String getCustomerList(ModelMap model){
        List<Customer> list = adminService.getCustomerList();
        model.addAttribute("list",list);
        return "listCustomer";
    }
    @RequestMapping("/listCall")
    public String getCallDetailsList(ModelMap model){
        List<Calldetails> list = adminService.getCallDetailsList();
        model.addAttribute("list",list);
        return "listCall";
    }
    @RequestMapping("/listGprs")
    public String getCallGprsdetailsList(ModelMap model){
        List<Gprsdetails> list = adminService.getGprsdetailsList();
        model.addAttribute("list",list);
        return "listGprs";
    }
    @RequestMapping("/listMessage")
    public String getMessagedetailsList(ModelMap model){
        List<Messagedetails> list = adminService.getMessagedetailsList();
        model.addAttribute("list",list);
        return "listMessage";
    }

    @RequestMapping("/update-view-customer")
    public String getCustomerById(@RequestParam("id") Integer id, ModelMap model){
        Customer customer = adminService.getCustomerById(id);
        model.addAttribute("customer",customer);
        return "updateCustomer";
    }
    @RequestMapping(value = "/saveCustomer",method = RequestMethod.POST)
    public String updateCustomer(Customer customer){
        adminService.updateCustomer(customer);
        return "redirect:listCustomer";
    }

    @RequestMapping("/update-view-call")
    public String getCalldetailsById(@RequestParam("id") Integer id, ModelMap model){
        Calldetails calldetails = adminService.getCalldetailsById(id);
        model.addAttribute("calldetails",calldetails);
        return "updateCall";
    }
    @RequestMapping(value = "/saveCall",method = RequestMethod.POST)
    public String updateCalldetails(Calldetails calldetails){
        adminService.updateCalldetails(calldetails);
        return "redirect:listCall";
    }

    @RequestMapping("/update-view-gprs")
    public String getGprsdetailsById(@RequestParam("id") Integer id, ModelMap model){
        Gprsdetails gprsdetails = adminService.getGprsdetailsById(id);
        model.addAttribute("gprsdetails",gprsdetails);
        return "updateGprs";
    }
    @RequestMapping(value = "/saveGprs",method = RequestMethod.POST)
    public String updateGprsdetails(Gprsdetails gprsdetails){
        adminService.updateGprsdetails(gprsdetails);
        return "redirect:listGprs";
    }

    @RequestMapping("/update-view-message")
    public String getMessagedetailsById(@RequestParam("id") Integer id, ModelMap model){
        Messagedetails messagedetails = adminService.getMessagedetailsById(id);
        model.addAttribute("messagedetails",messagedetails);
        return "updateMessage";
    }
    @RequestMapping(value = "/saveMessage",method = RequestMethod.POST)
    public String updateMessagedetails(Messagedetails messagedetails){
        adminService.updateMessagedetails(messagedetails);
        return "redirect:listMessage";
    }

    @RequestMapping("/deletecustomer")
    public String deleteCustomerById(@RequestParam("id") Integer id){
        adminService.deleteCustomerById(id);
        return "redirect:listCustomer";
    }
    @RequestMapping("/deletecalldetails")
    public String deleteCalldetailsById(@RequestParam("id") Integer id){
        adminService.deleteCalldetailsById(id);
        return "redirect:listCall";
    }
    @RequestMapping("/deletemessagedetails")
    public String deleteMessagedetailsById(@RequestParam("id") Integer id){
        adminService.deleteMessagedetailsById(id);
        return "redirect:listMessage";
    }
    @RequestMapping("/deletegprsdetails")
    public String deleteGprsdetailsById(@RequestParam("id") Integer id){
        adminService.deleteGprsdetailsById(id);
        return "redirect:listGprs";
    }
    @RequestMapping("/addCustomer")
    public String addCustomer(){
        return "addCustomer";
    }
    @RequestMapping(value = "/insertCustomer",method = RequestMethod.POST)
    public String insertCustomer(Customer customer){
        adminService.insertCustomer(customer);
        return "listCustomer";
    }
}
