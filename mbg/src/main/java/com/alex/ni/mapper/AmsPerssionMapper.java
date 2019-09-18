package com.alex.ni.mapper;

import com.alex.ni.model.AmsPerssion;
import com.alex.ni.model.AmsPerssionExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface AmsPerssionMapper {
    long countByExample(AmsPerssionExample example);

    int deleteByExample(AmsPerssionExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(AmsPerssion record);

    int insertSelective(AmsPerssion record);

    List<AmsPerssion> selectByExample(AmsPerssionExample example);

    AmsPerssion selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") AmsPerssion record, @Param("example") AmsPerssionExample example);

    int updateByExample(@Param("record") AmsPerssion record, @Param("example") AmsPerssionExample example);

    int updateByPrimaryKeySelective(AmsPerssion record);

    int updateByPrimaryKey(AmsPerssion record);
}