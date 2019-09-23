package com.alex.ni.mapper;

import com.alex.ni.model.AmsOrderItem;
import com.alex.ni.model.AmsOrderItemExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface AmsOrderItemMapper {
    long countByExample(AmsOrderItemExample example);

    int deleteByExample(AmsOrderItemExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(AmsOrderItem record);

    int insertSelective(AmsOrderItem record);

    List<AmsOrderItem> selectByExample(AmsOrderItemExample example);

    AmsOrderItem selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") AmsOrderItem record, @Param("example") AmsOrderItemExample example);

    int updateByExample(@Param("record") AmsOrderItem record, @Param("example") AmsOrderItemExample example);

    int updateByPrimaryKeySelective(AmsOrderItem record);

    int updateByPrimaryKey(AmsOrderItem record);
}