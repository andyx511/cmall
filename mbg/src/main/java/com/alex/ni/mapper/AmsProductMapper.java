package com.alex.ni.mapper;

import com.alex.ni.model.AmsProduct;
import com.alex.ni.model.AmsProductExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface AmsProductMapper {
    long countByExample(AmsProductExample example);

    int deleteByExample(AmsProductExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(AmsProduct record);

    int insertSelective(AmsProduct record);

    List<AmsProduct> selectByExampleWithBLOBs(AmsProductExample example);

    List<AmsProduct> selectByExample(AmsProductExample example);

    AmsProduct selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") AmsProduct record, @Param("example") AmsProductExample example);

    int updateByExampleWithBLOBs(@Param("record") AmsProduct record, @Param("example") AmsProductExample example);

    int updateByExample(@Param("record") AmsProduct record, @Param("example") AmsProductExample example);

    int updateByPrimaryKeySelective(AmsProduct record);

    int updateByPrimaryKeyWithBLOBs(AmsProduct record);

    int updateByPrimaryKey(AmsProduct record);
}