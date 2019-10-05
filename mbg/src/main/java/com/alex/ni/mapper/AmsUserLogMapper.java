package com.alex.ni.mapper;

import com.alex.ni.model.AmsUserLog;
import com.alex.ni.model.AmsUserLogExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface AmsUserLogMapper {
    long countByExample(AmsUserLogExample example);

    int deleteByExample(AmsUserLogExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(AmsUserLog record);

    int insertSelective(AmsUserLog record);

    List<AmsUserLog> selectByExample(AmsUserLogExample example);

    AmsUserLog selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") AmsUserLog record, @Param("example") AmsUserLogExample example);

    int updateByExample(@Param("record") AmsUserLog record, @Param("example") AmsUserLogExample example);

    int updateByPrimaryKeySelective(AmsUserLog record);

    int updateByPrimaryKey(AmsUserLog record);
}