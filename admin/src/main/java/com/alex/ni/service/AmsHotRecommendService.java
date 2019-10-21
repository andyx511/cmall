package com.alex.ni.service;

import com.alex.ni.model.AmsGoodRecommend;
import com.alex.ni.model.AmsHotRecommend;

import java.util.List;

/**
 * @author NiDingbo
 * @date 2019/10/21
 * @des
 */
public interface AmsHotRecommendService {
    List<AmsHotRecommend> list();
    Integer add(AmsHotRecommend recommend);
    Integer edit(AmsHotRecommend recommend);
    Integer delete(Integer id);
}
