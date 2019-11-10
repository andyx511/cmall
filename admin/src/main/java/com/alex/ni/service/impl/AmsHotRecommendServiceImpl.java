package com.alex.ni.service.impl;

import com.alex.ni.dao.HotDao;
import com.alex.ni.mapper.AmsHotRecommendMapper;
import com.alex.ni.model.AmsHotRecommend;
import com.alex.ni.model.AmsHotRecommend;
import com.alex.ni.service.AmsHotRecommendService;
import com.alex.ni.service.AmsHotRecommendService;
import com.alex.ni.vo.HotVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author NiDingbo
 * @date 2019/10/21
 * @des
 */
@Service
public class AmsHotRecommendServiceImpl implements AmsHotRecommendService {
    @Autowired
    private AmsHotRecommendMapper recommendMapper;
    @Autowired
    private HotDao hotDao;
    @Override
    public List<HotVo> list() {
        List<HotVo> list = hotDao.getList();
        return list;
    }

    @Override
    public Integer add(AmsHotRecommend recommend) {
        Integer record = recommendMapper.insertSelective(recommend);
        return record;
    }

    @Override
    public Integer edit(AmsHotRecommend recommend) {
        Integer record = recommendMapper.updateByPrimaryKeySelective(recommend);
        return record;
    }

    @Override
    public Integer delete(Integer id) {
        Integer record = recommendMapper.deleteByPrimaryKey(id);
        return record;
    }
}
