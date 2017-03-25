package com.yb.service.impl;

import com.yb.dao.*;
import com.yb.pojo.*;
import com.yb.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
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
    @Autowired
    private MypostageMapper mypostageMapper;
    @Autowired
    private PostageMapper postageMapper;
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

    @Override
    public Mypostage getMyPostageById(Integer id) {
        MypostageExample example = new MypostageExample();
        MypostageExample.Criteria criteria = example.createCriteria();
        criteria.andCIdEqualTo(id);
        List<Mypostage> list = mypostageMapper.selectByExample(example);
        return list.get(0);
    }

    @Override
    public List<Postage> getPostageList() {
        PostageExample example = new PostageExample();
        return postageMapper.selectByExample(example);

    }

    @Override
    public Mypostage saveMyPost(Integer mpid, String type) {
        //根据type查询到套餐明细
        PostageExample example1 = new PostageExample();
        PostageExample.Criteria criteria1 = example1.createCriteria();
        criteria1.andTypeEqualTo(type);
        List<Postage> postagelist = postageMapper.selectByExample(example1);
        Postage postage = postagelist.get(0);

        //根据mpid查询我的套餐明细
        Mypostage mypostage = mypostageMapper.selectByPrimaryKey(mpid);

        mypostage.setpId(postage.getPostId());
        mypostage.setType(postage.getType());
        mypostage.setCallprice(postage.getCallprice());
        mypostage.setMessageprice(postage.getMessageprice());
        mypostage.setRent(postage.getRent());

        //根新my套餐明细
        mypostageMapper.updateByPrimaryKey(mypostage);
        return mypostage;
    }

    @Override
    public List<Calldetails> called(Integer id, String time) {
        String[] strs1 = time.split("n");
        time = strs1[2];
        String[] strs = time.split(":");
        System.out.println(strs[0]);
        System.out.println(strs[1]);
        System.out.println(strs[2]);
        int hour = Integer.parseInt(strs[0]);
        int min = Integer.parseInt(strs[1]);
        int se = Integer.parseInt(strs[2]);

        if(se>0){
            min = min + 1;
        }
        int times = hour*60 + min;

        //根据用户id查询个人套餐，获取打电话的价格
        MypostageExample example = new MypostageExample();
        MypostageExample.Criteria criteria = example.createCriteria();
        criteria.andCIdEqualTo(id);
        List<Mypostage> list = mypostageMapper.selectByExample(example);
        Mypostage mypostage = list.get(0);
        //获取打电话的价格
        float price = mypostage.getCallprice();
        float money = price*times;

        //根据id获取个人余额
        BalanceExample example1 = new BalanceExample();
        BalanceExample.Criteria criteria1 = example1.createCriteria();
        criteria1.andCIdEqualTo(id);
        List<Balance> list1 = balanceMapper.selectByExample(example1);
        Balance balance = list1.get(0);
        //根新个人余额
        balance.setMoney(balance.getMoney()-money);
        balanceMapper.updateByPrimaryKey(balance);

        //生成通话记录
        Calldetails calldetails = new Calldetails();
        calldetails.setCreatetime(new Date());
        calldetails.setTime(times);
        calldetails.setCost(money);
        calldetails.setCustId(id);
        calldetails.setName(balance.getName());
        calldetailsMapper.insert(calldetails);

        //查询通话记录返回
        CalldetailsExample example2 = new CalldetailsExample();
        CalldetailsExample.Criteria criteria2 = example2.createCriteria();
        criteria2.andCustIdEqualTo(id);
        return  calldetailsMapper.selectByExample(example2);

    }

    @Override
    public List<Messagedetails> messaged(Integer id, Integer quanties) {
        //根据用户id查询个人套餐，获取短信的价格
        MypostageExample example = new MypostageExample();
        MypostageExample.Criteria criteria = example.createCriteria();
        criteria.andCIdEqualTo(id);
        List<Mypostage> list = mypostageMapper.selectByExample(example);
        Mypostage mypostage = list.get(0);
        float price = mypostage.getMessageprice();

        float money = price*quanties;

        //根据id获取个人余额
        BalanceExample example1 = new BalanceExample();
        BalanceExample.Criteria criteria1 = example1.createCriteria();
        criteria1.andCIdEqualTo(id);
        List<Balance> list1 = balanceMapper.selectByExample(example1);
        Balance balance = list1.get(0);
        //根新个人余额
        balance.setMoney(balance.getMoney()-money);
        balanceMapper.updateByPrimaryKey(balance);

        //生成短信记录
        Messagedetails messagedetails = new Messagedetails();
        messagedetails.setCreatetime(new Date());
        messagedetails.setQuantities(quanties);
        messagedetails.setCost(money);
        messagedetails.setCusId(id);
        messagedetails.setName(balance.getName());
        messagedetailsMapper.insert(messagedetails);

        //查询短信记录返回
        MessagedetailsExample example2 = new MessagedetailsExample();
        MessagedetailsExample.Criteria criteria2 = example2.createCriteria();
        criteria2.andCusIdEqualTo(id);
        return messagedetailsMapper.selectByExample(example2);

    }
}
