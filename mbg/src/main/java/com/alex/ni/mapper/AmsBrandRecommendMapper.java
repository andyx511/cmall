package com.alex.ni.mapper;

import com.alex.ni.model.AmsBrandRecommend;
import com.alex.ni.model.AmsBrandRecommendExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface AmsBrandRecommendMapper {
    long countByExample(AmsBrandRecommendExample example);

    int deleteByExample(AmsBrandRecommendExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(AmsBrandRecommend record);

    int insertSelective(AmsBrandRecommend record);

    List<AmsBrandRecommend> selectByExample(AmsBrandRecommendExample example);

    AmsBrandRecommend selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") AmsBrandRecommend record, @Param("example") AmsBrandRecommendExample example);

    int updateByExample(@Param("record") AmsBrandRecommend record, @Param("example") AmsBrandRecommendExample example);

    int updateByPrimaryKeySelective(AmsBrandRecommend record);

    int updateByPrimaryKey(AmsBrandRecommend record);
}