package com.yb.service.impl;

import com.yb.dao.AdminMapper;
import com.yb.dao.CustomerMapper;
import com.yb.pojo.Admin;
import com.yb.pojo.AdminExample;
import com.yb.pojo.Customer;
import com.yb.pojo.CustomerExample;
import com.yb.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by 杨波 on 2017/3/21.
 */
@Service
public class LoginServiceImpl implements LoginService {
    @Autowired
    private AdminMapper adminMapper;
    @Autowired
    private CustomerMapper customerMapper;
    /**根据用户名密码查询数据库*/
    private String getAdmin(String username1, String password1) {
        AdminExample example1 = new AdminExample();
        AdminExample.Criteria criteria1 = example1.createCriteria();
        criteria1.andAdminnameEqualTo(username1);
        criteria1.andAdminpasswordEqualTo(password1);
        List<Admin> list1 = adminMapper.selectByExample(example1);
        if(list1.isEmpty()){
            return "error";
        }else {
            return "admin";
        }
    }
    /**根据用户名密码查询数据库*/
    private String getCustomer(String username2, String password2) {
        CustomerExample example2 = new CustomerExample();
        CustomerExample.Criteria criteria2 = example2.createCriteria();
        criteria2.andUsernameEqualTo(username2);
        criteria2.andPasswordEqualTo(password2);
        List<Customer> list2 = customerMapper.selectByExample(example2);
        if(list2.isEmpty()){
            return "error";
        }else {
            return "user";
        }

    }

    @Override
    public String getAdminOrCustomer(String username, String password, String logtype) {
        if("admin".equals(logtype)){
            return getAdmin(username,password);
        }else if("customer".equals(logtype)){
            return getCustomer(username, password);
        }else {
            return "error";
        }
    }

    @Override
    public Customer getCustomer(String username) {
        CustomerExample example = new CustomerExample();
        CustomerExample.Criteria criteria = example.createCriteria();
        criteria.andUsernameEqualTo(username);
        List<Customer> list = customerMapper.selectByExample(example);
        Customer customer = list.get(0);
        return customer;
    }

}
