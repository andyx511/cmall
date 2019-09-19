package com.alex.ni.mapper;

import com.alex.ni.model.AmsKind;
import com.alex.ni.model.AmsKindExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface AmsKindMapper {
    long countByExample(AmsKindExample example);

    int deleteByExample(AmsKindExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(AmsKind record);

    int insertSelective(AmsKind record);

    List<AmsKind> selectByExample(AmsKindExample example);

    AmsKind selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") AmsKind record, @Param("example") AmsKindExample example);

    int updateByExample(@Param("record") AmsKind record, @Param("example") AmsKindExample example);

    int updateByPrimaryKeySelective(AmsKind record);

    int updateByPrimaryKey(AmsKind record);
}