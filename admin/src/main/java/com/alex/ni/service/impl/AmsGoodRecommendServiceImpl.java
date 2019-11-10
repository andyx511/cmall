package com.alex.ni.service.impl;

import com.alex.ni.dao.GoodDao;
import com.alex.ni.mapper.AmsGoodRecommendMapper;
import com.alex.ni.model.AmsGoodRecommend;
import com.alex.ni.model.AmsGoodRecommendExample;
import com.alex.ni.service.AmsGoodRecommendService;
import com.alex.ni.vo.GoodVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author NiDingbo
 * @date 2019/10/21
 * @des
 */
@Service
public class AmsGoodRecommendServiceImpl implements AmsGoodRecommendService {
    @Autowired
    private AmsGoodRecommendMapper recommendMapper;
    @Autowired
    private GoodDao goodDao;
    @Override
    public List<GoodVo> list() {
        List<GoodVo> list = goodDao.getList();
        return list;
    }

    @Override
    public Integer add(AmsGoodRecommend recommend) {
        Integer record = recommendMapper.insertSelective(recommend);
        return record;
    }

    @Override
    public Integer edit(AmsGoodRecommend recommend) {
        Integer record = recommendMapper.updateByPrimaryKeySelective(recommend);
        return record;
    }

    @Override
    public Integer delete(Integer id) {
        Integer record = recommendMapper.deleteByPrimaryKey(id);
        return record;
    }
}
