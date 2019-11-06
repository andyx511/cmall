package com.alex.ni.service;

import com.alex.ni.model.AmsBrandRecommend;
import com.alex.ni.model.AmsGoodRecommend;
import com.alex.ni.model.AmsHotRecommend;
import com.alex.ni.model.AmsNewRecommend;

import java.util.List;

/**
 * @author NiDingbo
 * @date 2019/11/6
 * @des
 */
public interface AmsRecommendService {
    // cnm的白写
    // 品牌
    Integer addBrand(Integer brandId);
   /* Integer deleteBrand(Integer id);
    Integer updateBrand(AmsBrandRecommend brandRecommend);
    List<AmsBrandRecommend> brandList();

    // 优选
    Integer addGood(Integer productId);
    Integer deleteGood(Integer id);
    Integer updateGood(AmsGoodRecommend goodRecommend);
    List<AmsGoodRecommend> goodList();

    // 热销
    Integer addHot(Integer productId);
    Integer deleteHot(Integer id);
    Integer updateHot(AmsHotRecommend hotRecommend);
    List<AmsHotRecommend> hotList();

    // 新品
    Integer addNew(Integer productId);
    Integer deleteNew(Integer id);
    Integer updateNew(AmsNewRecommend newRecommend);
    List<AmsNewRecommend> newList();*/
}
