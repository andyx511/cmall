package com.alex.ni.mapper;

import com.alex.ni.model.AmsMember;
import com.alex.ni.model.AmsMemberExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface AmsMemberMapper {
    long countByExample(AmsMemberExample example);

    int deleteByExample(AmsMemberExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(AmsMember record);

    int insertSelective(AmsMember record);

    List<AmsMember> selectByExample(AmsMemberExample example);

    AmsMember selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") AmsMember record, @Param("example") AmsMemberExample example);

    int updateByExample(@Param("record") AmsMember record, @Param("example") AmsMemberExample example);

    int updateByPrimaryKeySelective(AmsMember record);

    int updateByPrimaryKey(AmsMember record);
}