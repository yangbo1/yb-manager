package com.yb.service;

import com.yb.pojo.*;

import java.util.List;

/**
 * Created by 杨波 on 2017/3/23.
 */
public interface UserService {
    Customer getmyInfoById(Integer id);

    List<Calldetails> getMyCallById(Integer id);

    List<Gprsdetails> getMyGprsById(Integer id);

    List<Messagedetails> getMyMessageById(Integer id);

    Balance getMyBalanceById(Integer id);

    Balance addMoney(float addmoney, Integer baId);

    Mypostage getMyPostageById(Integer id);

    List<Postage> getPostageList();

    Mypostage saveMyPost(Integer mpid, String type);

    List<Calldetails> called(Integer id, String time);

    List<Messagedetails> messaged(Integer id, Integer quanties);
}
