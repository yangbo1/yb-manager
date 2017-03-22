package com.yb.dao;

import com.yb.pojo.Postage;
import com.yb.pojo.PostageExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface PostageMapper {
    int countByExample(PostageExample example);

    int deleteByExample(PostageExample example);

    int deleteByPrimaryKey(Integer postId);

    int insert(Postage record);

    int insertSelective(Postage record);

    List<Postage> selectByExample(PostageExample example);

    Postage selectByPrimaryKey(Integer postId);

    int updateByExampleSelective(@Param("record") Postage record, @Param("example") PostageExample example);

    int updateByExample(@Param("record") Postage record, @Param("example") PostageExample example);

    int updateByPrimaryKeySelective(Postage record);

    int updateByPrimaryKey(Postage record);
}