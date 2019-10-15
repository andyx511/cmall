package com.alex.ni.mapper;

import com.alex.ni.model.AmsOrderReturn;
import com.alex.ni.model.AmsOrderReturnExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface AmsOrderReturnMapper {
    long countByExample(AmsOrderReturnExample example);

    int deleteByExample(AmsOrderReturnExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(AmsOrderReturn record);

    int insertSelective(AmsOrderReturn record);

    List<AmsOrderReturn> selectByExample(AmsOrderReturnExample example);

    AmsOrderReturn selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") AmsOrderReturn record, @Param("example") AmsOrderReturnExample example);

    int updateByExample(@Param("record") AmsOrderReturn record, @Param("example") AmsOrderReturnExample example);

    int updateByPrimaryKeySelective(AmsOrderReturn record);

    int updateByPrimaryKey(AmsOrderReturn record);
}