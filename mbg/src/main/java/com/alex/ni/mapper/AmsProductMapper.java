package com.alex.ni.mapper;

import com.alex.ni.model.AmsProduct;
import com.alex.ni.model.AmsProductExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface AmsProductMapper {
    long countByExample(AmsProductExample example);

    int deleteByExample(AmsProductExample example);

    int deleteByPrimaryKey(@Param("id") Integer id, @Param("isPublic") String isPublic);

    int insert(AmsProduct record);

    int insertSelective(AmsProduct record);

    List<AmsProduct> selectByExample(AmsProductExample example);

    AmsProduct selectByPrimaryKey(@Param("id") Integer id, @Param("isPublic") String isPublic);

    int updateByExampleSelective(@Param("record") AmsProduct record, @Param("example") AmsProductExample example);

    int updateByExample(@Param("record") AmsProduct record, @Param("example") AmsProductExample example);

    int updateByPrimaryKeySelective(AmsProduct record);

    int updateByPrimaryKey(AmsProduct record);
}