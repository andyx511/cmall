package com.alex.ni.service.impl;

import com.alex.ni.dao.NewDao;
import com.alex.ni.mapper.AmsNewRecommendMapper;
import com.alex.ni.model.AmsNewRecommend;
import com.alex.ni.model.AmsNewRecommend;
import com.alex.ni.service.AmsNewRecommendService;
import com.alex.ni.service.AmsNewRecommendService;
import com.alex.ni.vo.NewVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author NiDingbo
 * @date 2019/10/21
 * @des
 */
@Service
public class AmsNewRecommendServiceImpl implements AmsNewRecommendService {
    @Autowired
    private AmsNewRecommendMapper recommendMapper;
    @Autowired
    private NewDao newDao;
    @Override
    public List<NewVo> list() {
        List<NewVo> list = newDao.getList();
        return list;
    }

    @Override
    public Integer add(AmsNewRecommend recommend) {
        Integer record = recommendMapper.insertSelective(recommend);
        return record;
    }

    @Override
    public Integer edit(AmsNewRecommend recommend) {
        Integer record = recommendMapper.updateByPrimaryKeySelective(recommend);
        return record;
    }

    @Override
    public Integer delete(Integer id) {
        Integer record = recommendMapper.deleteByPrimaryKey(id);
        return record;
    }
}
