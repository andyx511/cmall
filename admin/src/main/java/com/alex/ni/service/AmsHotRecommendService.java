package com.alex.ni.service;

import com.alex.ni.model.AmsGoodRecommend;
import com.alex.ni.model.AmsHotRecommend;
import com.alex.ni.vo.GoodVo;
import com.alex.ni.vo.HotVo;

import java.util.List;

/**
 * @author NiDingbo
 * @date 2019/10/21
 * @des
 */
public interface AmsHotRecommendService {
    List<HotVo> list();
    Integer add(AmsHotRecommend recommend);
    Integer edit(AmsHotRecommend recommend);
    Integer delete(Integer id);
}
