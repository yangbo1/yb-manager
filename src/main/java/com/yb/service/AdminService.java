package com.yb.service;

import com.yb.pojo.Calldetails;
import com.yb.pojo.Customer;
import com.yb.pojo.Gprsdetails;
import com.yb.pojo.Messagedetails;

import java.util.List;

/**
 * Created by 杨波 on 2017/3/22.
 */
public interface AdminService {

    List<Customer> getCustomerList();

    List<Calldetails> getCallDetailsList();

    List<Gprsdetails> getGprsdetailsList();

    List<Messagedetails> getMessagedetailsList();

    Customer getCustomerById(Integer id);

    void updateCustomer(Customer customer);

    Calldetails getCalldetailsById(Integer id);

    void updateCalldetails(Calldetails calldetails);

    Gprsdetails getGprsdetailsById(Integer id);

    void updateGprsdetails(Gprsdetails gprsdetails);

    Messagedetails getMessagedetailsById(Integer id);

    void updateMessagedetails(Messagedetails messagedetails);

    void deleteCustomerById(Integer id);

    void deleteCalldetailsById(Integer id);

    void deleteMessagedetailsById(Integer id);

    void deleteGprsdetailsById(Integer id);

    void insertCustomer(Customer customer);
}
