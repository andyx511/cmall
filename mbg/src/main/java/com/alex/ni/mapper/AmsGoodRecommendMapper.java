package com.alex.ni.mapper;

import com.alex.ni.model.AmsGoodRecommend;
import com.alex.ni.model.AmsGoodRecommendExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface AmsGoodRecommendMapper {
    long countByExample(AmsGoodRecommendExample example);

    int deleteByExample(AmsGoodRecommendExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(AmsGoodRecommend record);

    int insertSelective(AmsGoodRecommend record);

    List<AmsGoodRecommend> selectByExample(AmsGoodRecommendExample example);

    AmsGoodRecommend selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") AmsGoodRecommend record, @Param("example") AmsGoodRecommendExample example);

    int updateByExample(@Param("record") AmsGoodRecommend record, @Param("example") AmsGoodRecommendExample example);

    int updateByPrimaryKeySelective(AmsGoodRecommend record);

    int updateByPrimaryKey(AmsGoodRecommend record);
}