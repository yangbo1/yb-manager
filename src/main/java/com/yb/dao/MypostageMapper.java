package com.yb.dao;

import com.yb.pojo.Mypostage;
import com.yb.pojo.MypostageExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface MypostageMapper {
    int countByExample(MypostageExample example);

    int deleteByExample(MypostageExample example);

    int deleteByPrimaryKey(Integer mpid);

    int insert(Mypostage record);

    int insertSelective(Mypostage record);

    List<Mypostage> selectByExample(MypostageExample example);

    Mypostage selectByPrimaryKey(Integer mpid);

    int updateByExampleSelective(@Param("record") Mypostage record, @Param("example") MypostageExample example);

    int updateByExample(@Param("record") Mypostage record, @Param("example") MypostageExample example);

    int updateByPrimaryKeySelective(Mypostage record);

    int updateByPrimaryKey(Mypostage record);
}