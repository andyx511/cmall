package com.alex.ni.mapper;

import com.alex.ni.model.AmsNewRecommend;
import com.alex.ni.model.AmsNewRecommendExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface AmsNewRecommendMapper {
    long countByExample(AmsNewRecommendExample example);

    int deleteByExample(AmsNewRecommendExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(AmsNewRecommend record);

    int insertSelective(AmsNewRecommend record);

    List<AmsNewRecommend> selectByExample(AmsNewRecommendExample example);

    AmsNewRecommend selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") AmsNewRecommend record, @Param("example") AmsNewRecommendExample example);

    int updateByExample(@Param("record") AmsNewRecommend record, @Param("example") AmsNewRecommendExample example);

    int updateByPrimaryKeySelective(AmsNewRecommend record);

    int updateByPrimaryKey(AmsNewRecommend record);
}