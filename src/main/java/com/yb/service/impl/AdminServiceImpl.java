package com.yb.service.impl;

import com.yb.dao.*;
import com.yb.pojo.*;
import com.yb.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by 杨波 on 2017/3/22.
 */
@Service
public class AdminServiceImpl implements AdminService {
    @Autowired
    private CustomerMapper customerMapper;
    @Autowired
    private CalldetailsMapper calldetailsMapper;
    @Autowired
    private GprsdetailsMapper gprsdetailsMapper;
    @Autowired
    private MessagedetailsMapper messagedetailsMapper;
    @Autowired
    private BalanceMapper balanceMapper;

    @Override
    public List<Customer> getCustomerList() {
        CustomerExample example = new CustomerExample();
        List<Customer> list = customerMapper.selectByExample(example);
        return list;
    }

    @Override
    public List<Calldetails> getCallDetailsList() {
        CalldetailsExample example = new CalldetailsExample();
        return calldetailsMapper.selectByExample(example);

    }

    @Override
    public List<Gprsdetails> getGprsdetailsList() {
        GprsdetailsExample example = new GprsdetailsExample();
        return gprsdetailsMapper.selectByExample(example);
    }

    @Override
    public List<Messagedetails> getMessagedetailsList() {
        MessagedetailsExample example = new MessagedetailsExample();
        return messagedetailsMapper.selectByExample(example);
    }

    @Override
    public Customer getCustomerById(Integer id) {
        return customerMapper.selectByPrimaryKey(id);
    }

    @Override
    public void updateCustomer(Customer customer) {

        customerMapper.updateByPrimaryKey(customer);
    }

    @Override
    public Calldetails getCalldetailsById(Integer id) {
        return calldetailsMapper.selectByPrimaryKey(id);
    }

    @Override
    public void updateCalldetails(Calldetails calldetails) {
        calldetailsMapper.updateByPrimaryKey(calldetails);
    }

    @Override
    public Gprsdetails getGprsdetailsById(Integer id) {
        return gprsdetailsMapper.selectByPrimaryKey(id);
    }

    @Override
    public void updateGprsdetails(Gprsdetails gprsdetails) {
        gprsdetailsMapper.updateByPrimaryKey(gprsdetails);
    }

    @Override
    public Messagedetails getMessagedetailsById(Integer id) {
        return messagedetailsMapper.selectByPrimaryKey(id);
    }

    @Override
    public void updateMessagedetails(Messagedetails messagedetails) {
        messagedetailsMapper.updateByPrimaryKey(messagedetails);
    }

    @Override
    public void deleteCustomerById(Integer id) {
        customerMapper.deleteByPrimaryKey(id);
    }

    @Override
    public void deleteCalldetailsById(Integer id) {
        calldetailsMapper.deleteByPrimaryKey(id);
    }

    @Override
    public void deleteMessagedetailsById(Integer id) {
        messagedetailsMapper.deleteByPrimaryKey(id);
    }

    @Override
    public void deleteGprsdetailsById(Integer id) {
        gprsdetailsMapper.deleteByPrimaryKey(id);
    }

    @Override
    public void insertCustomer(Customer customer) {
        customerMapper.insertSelective(customer);
        Balance balance = new Balance();
        balance.setName(customer.getUsername());
        balance.setcId(customer.getCustId());
        balance.setMoney((float)0);
        balance.setGprs((long)0);
        balanceMapper.insertSelective(balance);

    }
}
