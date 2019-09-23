package com.alex.ni.mapper;

import com.alex.ni.model.AmsCart;
import com.alex.ni.model.AmsCartExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface AmsCartMapper {
    long countByExample(AmsCartExample example);

    int deleteByExample(AmsCartExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(AmsCart record);

    int insertSelective(AmsCart record);

    List<AmsCart> selectByExample(AmsCartExample example);

    AmsCart selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") AmsCart record, @Param("example") AmsCartExample example);

    int updateByExample(@Param("record") AmsCart record, @Param("example") AmsCartExample example);

    int updateByPrimaryKeySelective(AmsCart record);

    int updateByPrimaryKey(AmsCart record);
}