package com.yb.service.impl;

import com.yb.dao.*;
import com.yb.pojo.*;
import com.yb.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by 杨波 on 2017/3/23.
 */
@Service
public class UserServiceImpl implements UserService {
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
    public Customer getmyInfoById(Integer id) {
        return customerMapper.selectByPrimaryKey(id);

    }

    @Override
    public List<Calldetails> getMyCallById(Integer id) {
        CalldetailsExample example = new CalldetailsExample();
        CalldetailsExample.Criteria criteria = example.createCriteria();
        criteria.andCustIdEqualTo(id);
        return calldetailsMapper.selectByExample(example);

    }

    @Override
    public List<Gprsdetails> getMyGprsById(Integer id) {
        GprsdetailsExample example = new GprsdetailsExample();
        GprsdetailsExample.Criteria criteria = example.createCriteria();
        criteria.andCuIdEqualTo(id);
        return gprsdetailsMapper.selectByExample(example);

    }

    @Override
    public List<Messagedetails> getMyMessageById(Integer id) {
        MessagedetailsExample example = new MessagedetailsExample();
        MessagedetailsExample.Criteria criteria = example.createCriteria();
        criteria.andCusIdEqualTo(id);
        return messagedetailsMapper.selectByExample(example);

    }

    @Override
    public Balance getMyBalanceById(Integer id) {
        BalanceExample example = new BalanceExample();
        BalanceExample.Criteria criteria = example.createCriteria();
        criteria.andCIdEqualTo(id);
        List<Balance> list = balanceMapper.selectByExample(example);
        return list.get(0);
    }

    @Override
    public Balance addMoney(float addmoney, Integer baId) {
        Balance balance = balanceMapper.selectByPrimaryKey(baId);
        balance.setMoney(balance.getMoney()+addmoney);
        balanceMapper.updateByPrimaryKey(balance);

        return balance;
    }
}
