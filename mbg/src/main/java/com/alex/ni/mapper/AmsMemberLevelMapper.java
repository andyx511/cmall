package com.alex.ni.mapper;

import com.alex.ni.model.AmsMemberLevel;
import com.alex.ni.model.AmsMemberLevelExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface AmsMemberLevelMapper {
    long countByExample(AmsMemberLevelExample example);

    int deleteByExample(AmsMemberLevelExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(AmsMemberLevel record);

    int insertSelective(AmsMemberLevel record);

    List<AmsMemberLevel> selectByExample(AmsMemberLevelExample example);

    AmsMemberLevel selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") AmsMemberLevel record, @Param("example") AmsMemberLevelExample example);

    int updateByExample(@Param("record") AmsMemberLevel record, @Param("example") AmsMemberLevelExample example);

    int updateByPrimaryKeySelective(AmsMemberLevel record);

    int updateByPrimaryKey(AmsMemberLevel record);
}