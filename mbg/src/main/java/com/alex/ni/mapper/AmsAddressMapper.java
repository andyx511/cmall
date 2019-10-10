package com.alex.ni.mapper;

import com.alex.ni.model.AmsAddress;
import com.alex.ni.model.AmsAddressExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface AmsAddressMapper {
    long countByExample(AmsAddressExample example);

    int deleteByExample(AmsAddressExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(AmsAddress record);

    int insertSelective(AmsAddress record);

    List<AmsAddress> selectByExample(AmsAddressExample example);

    AmsAddress selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") AmsAddress record, @Param("example") AmsAddressExample example);

    int updateByExample(@Param("record") AmsAddress record, @Param("example") AmsAddressExample example);

    int updateByPrimaryKeySelective(AmsAddress record);

    int updateByPrimaryKey(AmsAddress record);
}