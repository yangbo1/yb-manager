package com.yb.dao;

import com.yb.pojo.Calldetails;
import com.yb.pojo.CalldetailsExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CalldetailsMapper {
    int countByExample(CalldetailsExample example);

    int deleteByExample(CalldetailsExample example);

    int deleteByPrimaryKey(Integer callId);

    int insert(Calldetails record);

    int insertSelective(Calldetails record);

    List<Calldetails> selectByExample(CalldetailsExample example);

    Calldetails selectByPrimaryKey(Integer callId);

    int updateByExampleSelective(@Param("record") Calldetails record, @Param("example") CalldetailsExample example);

    int updateByExample(@Param("record") Calldetails record, @Param("example") CalldetailsExample example);

    int updateByPrimaryKeySelective(Calldetails record);

    int updateByPrimaryKey(Calldetails record);
}