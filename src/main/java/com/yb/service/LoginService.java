package com.yb.service;

import com.yb.pojo.Customer;

/**
 * Created by 杨波 on 2017/3/21.
 */
public interface LoginService {
    String getAdminOrCustomer(String username, String password, String logtype);

    Customer getCustomer(String username);
}
