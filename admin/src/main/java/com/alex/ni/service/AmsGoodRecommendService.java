package com.alex.ni.service;

import com.alex.ni.model.AmsGoodRecommend;
import io.swagger.models.auth.In;

import java.util.List;

/**
 * @author NiDingbo
 * @date 2019/10/21
 * @des
 */
public interface AmsGoodRecommendService {
    List<AmsGoodRecommend> list();
    Integer add(AmsGoodRecommend recommend);
    Integer edit(AmsGoodRecommend recommend);
    Integer delete(Integer id);
}
