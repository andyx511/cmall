package com.alex.ni.mapper;

import com.alex.ni.model.AmsOrder;
import com.alex.ni.model.AmsOrderExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface AmsOrderMapper {
    long countByExample(AmsOrderExample example);

    int deleteByExample(AmsOrderExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(AmsOrder record);

    int insertSelective(AmsOrder record);

    List<AmsOrder> selectByExample(AmsOrderExample example);

    AmsOrder selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") AmsOrder record, @Param("example") AmsOrderExample example);

    int updateByExample(@Param("record") AmsOrder record, @Param("example") AmsOrderExample example);

    int updateByPrimaryKeySelective(AmsOrder record);

    int updateByPrimaryKey(AmsOrder record);
}