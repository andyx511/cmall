package com.alex.ni.mapper;

import com.alex.ni.model.AmsHotRecommend;
import com.alex.ni.model.AmsHotRecommendExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface AmsHotRecommendMapper {
    long countByExample(AmsHotRecommendExample example);

    int deleteByExample(AmsHotRecommendExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(AmsHotRecommend record);

    int insertSelective(AmsHotRecommend record);

    List<AmsHotRecommend> selectByExample(AmsHotRecommendExample example);

    AmsHotRecommend selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") AmsHotRecommend record, @Param("example") AmsHotRecommendExample example);

    int updateByExample(@Param("record") AmsHotRecommend record, @Param("example") AmsHotRecommendExample example);

    int updateByPrimaryKeySelective(AmsHotRecommend record);

    int updateByPrimaryKey(AmsHotRecommend record);
}