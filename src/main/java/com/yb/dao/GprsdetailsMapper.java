package com.yb.dao;

import com.yb.pojo.Gprsdetails;
import com.yb.pojo.GprsdetailsExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface GprsdetailsMapper {
    int countByExample(GprsdetailsExample example);

    int deleteByExample(GprsdetailsExample example);

    int deleteByPrimaryKey(Integer gprsId);

    int insert(Gprsdetails record);

    int insertSelective(Gprsdetails record);

    List<Gprsdetails> selectByExample(GprsdetailsExample example);

    Gprsdetails selectByPrimaryKey(Integer gprsId);

    int updateByExampleSelective(@Param("record") Gprsdetails record, @Param("example") GprsdetailsExample example);

    int updateByExample(@Param("record") Gprsdetails record, @Param("example") GprsdetailsExample example);

    int updateByPrimaryKeySelective(Gprsdetails record);

    int updateByPrimaryKey(Gprsdetails record);
}