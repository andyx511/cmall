package com.alex.ni.service.impl;

import com.alex.ni.mapper.AmsBrandRecommendMapper;
import com.alex.ni.model.AmsBrandRecommend;
import com.alex.ni.model.AmsBrandRecommendExample;
import com.alex.ni.service.AmsBrandRecommendService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author NiDingbo
 * @date 2019/10/21
 * @des
 */
@Service
public class AmsBrandRecommendServiceImpl implements AmsBrandRecommendService {
    @Autowired
    private AmsBrandRecommendMapper recommendMapper;

    @Override
    public List<AmsBrandRecommend> list() {
        List<AmsBrandRecommend> list  = recommendMapper.selectByExample(new AmsBrandRecommendExample());
        return list;
    }

    @Override
    public Integer add(AmsBrandRecommend brandRecommend) {
        Integer record = recommendMapper.insertSelective(brandRecommend);
        return record;
    }

    @Override
    public Integer edit(AmsBrandRecommend brandRecommend) {
        Integer record = recommendMapper.updateByPrimaryKeySelective(brandRecommend);
        return record;
    }

    @Override
    public Integer delete(Integer id) {
        Integer record = recommendMapper.deleteByPrimaryKey(id);
        return record;
    }
}
