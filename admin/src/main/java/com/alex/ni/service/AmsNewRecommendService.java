package com.alex.ni.service;

import com.alex.ni.model.AmsHotRecommend;
import com.alex.ni.model.AmsNewRecommend;

import java.util.List;

/**
 * @author NiDingbo
 * @date 2019/10/21
 * @des
 */
public interface AmsNewRecommendService {
    List<AmsNewRecommend> list();
    Integer add(AmsNewRecommend recommend);
    Integer edit(AmsNewRecommend recommend);
    Integer delete(Integer id);
}
