package com.yb.dao;

import com.yb.pojo.Messagedetails;
import com.yb.pojo.MessagedetailsExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface MessagedetailsMapper {
    int countByExample(MessagedetailsExample example);

    int deleteByExample(MessagedetailsExample example);

    int deleteByPrimaryKey(Integer messId);

    int insert(Messagedetails record);

    int insertSelective(Messagedetails record);

    List<Messagedetails> selectByExample(MessagedetailsExample example);

    Messagedetails selectByPrimaryKey(Integer messId);

    int updateByExampleSelective(@Param("record") Messagedetails record, @Param("example") MessagedetailsExample example);

    int updateByExample(@Param("record") Messagedetails record, @Param("example") MessagedetailsExample example);

    int updateByPrimaryKeySelective(Messagedetails record);

    int updateByPrimaryKey(Messagedetails record);
}