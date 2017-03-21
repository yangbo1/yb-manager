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
        Admin admin = (Admin) adminMapper.selectByExample(example1);
        if(admin==null){
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
        Customer customer = (Customer) customerMapper.selectByExample(example2);
        if(customer==null){
            return "error";
        }else {
            return "user";
        }

    }

    @Override
    public String getAdminOrCustomer(String username, String password, String logtype) {
        if(logtype == "admin"){
            return getAdmin(username,password);
        }else if(logtype == "customer"){
            return getCustomer(username, password);
        }
        return "error";
    }

}