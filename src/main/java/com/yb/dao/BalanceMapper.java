package com.yb.dao;

import com.yb.pojo.Balance;
import com.yb.pojo.BalanceExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface BalanceMapper {
    int countByExample(BalanceExample example);

    int deleteByExample(BalanceExample example);

    int deleteByPrimaryKey(Integer baId);

    int insert(Balance record);

    int insertSelective(Balance record);

    List<Balance> selectByExample(BalanceExample example);

    Balance selectByPrimaryKey(Integer baId);

    int updateByExampleSelective(@Param("record") Balance record, @Param("example") BalanceExample example);

    int updateByExample(@Param("record") Balance record, @Param("example") BalanceExample example);

    int updateByPrimaryKeySelective(Balance record);

    int updateByPrimaryKey(Balance record);
}