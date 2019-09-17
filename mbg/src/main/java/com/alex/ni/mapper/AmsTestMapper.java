package com.alex.ni.mapper;

import com.alex.ni.model.AmsTest;
import com.alex.ni.model.AmsTestExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface AmsTestMapper {
    long countByExample(AmsTestExample example);

    int deleteByExample(AmsTestExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(AmsTest record);

    int insertSelective(AmsTest record);

    List<AmsTest> selectByExample(AmsTestExample example);

    AmsTest selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") AmsTest record, @Param("example") AmsTestExample example);

    int updateByExample(@Param("record") AmsTest record, @Param("example") AmsTestExample example);

    int updateByPrimaryKeySelective(AmsTest record);

    int updateByPrimaryKey(AmsTest record);
}