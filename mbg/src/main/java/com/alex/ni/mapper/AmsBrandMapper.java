package com.alex.ni.mapper;

import com.alex.ni.model.AmsBrand;
import com.alex.ni.model.AmsBrandExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface AmsBrandMapper {
    long countByExample(AmsBrandExample example);

    int deleteByExample(AmsBrandExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(AmsBrand record);

    int insertSelective(AmsBrand record);

    List<AmsBrand> selectByExample(AmsBrandExample example);

    AmsBrand selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") AmsBrand record, @Param("example") AmsBrandExample example);

    int updateByExample(@Param("record") AmsBrand record, @Param("example") AmsBrandExample example);

    int updateByPrimaryKeySelective(AmsBrand record);

    int updateByPrimaryKey(AmsBrand record);
}