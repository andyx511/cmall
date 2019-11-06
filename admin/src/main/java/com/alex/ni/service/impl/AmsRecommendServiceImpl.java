package com.alex.ni.service.impl;

import com.alex.ni.mapper.AmsBrandRecommendMapper;
import com.alex.ni.model.AmsBrand;
import com.alex.ni.service.AmsRecommendService;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * @author NiDingbo
 * @date 2019/11/6
 * @des
 */
public class AmsRecommendServiceImpl implements AmsRecommendService {

    @Autowired
    private AmsBrandRecommendMapper brandRecommendMapper;

    @Override
    public Integer addBrand(Integer brandId) {
        return null;
    }
}
