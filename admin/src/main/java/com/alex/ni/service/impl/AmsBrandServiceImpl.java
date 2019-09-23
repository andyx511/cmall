package com.alex.ni.service.impl;

import com.alex.ni.dto.AmsBrandQueryParam;
import com.alex.ni.mapper.AmsBrandMapper;
import com.alex.ni.model.AmsBrand;
import com.alex.ni.model.AmsBrandExample;
import com.alex.ni.service.AmsBrandService;
import com.github.pagehelper.PageHelper;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author NiDingbo
 * @des
 */
@Service
public class AmsBrandServiceImpl implements AmsBrandService {

    @Autowired
    private AmsBrandMapper amsBrandMapper;

    @Override
    public List<AmsBrand> list(AmsBrandQueryParam amsBrandQueryParam, Integer pageNum, Integer pageSize) {
        PageHelper.startPage(pageNum, pageSize);
        AmsBrandExample example = new AmsBrandExample();
        AmsBrandExample.Criteria criteria = example.createCriteria();
        if (!StringUtils.isEmpty(amsBrandQueryParam.getBrandName())){
            criteria.andNameLike("%" + amsBrandQueryParam.getBrandName() + "%");
        }
        if (amsBrandQueryParam.getId() != null){
            criteria.andIdEqualTo(amsBrandQueryParam.getId());
        }
        criteria.andIsDeleteEqualTo(0);
        example.setOrderByClause("id desc");
        List<AmsBrand> list = amsBrandMapper.selectByExample(example);
        return list;
    }

    @Override
    public Integer add(AmsBrand amsBrand) {
        Integer record = amsBrandMapper.insertSelective(amsBrand);
        return record;
    }

    @Override
    public AmsBrand detail(Integer id) {
        AmsBrand amsBrand =amsBrandMapper.selectByPrimaryKey(id);
        return amsBrand;
    }

    @Override
    public Integer update(AmsBrand amsBrand) {
        AmsBrandExample example = new AmsBrandExample();
        example.createCriteria().andIdEqualTo(amsBrand.getId());
        Integer record = amsBrandMapper.updateByExampleSelective(amsBrand,example);
        return record;
    }

    @Override
    public Integer delete(List<Integer> ids) {
        AmsBrandExample example = new AmsBrandExample();
        example.createCriteria().andIdIn(ids);
        AmsBrand amsBrand = new AmsBrand();
        amsBrand.setIsDelete(1);
        Integer count = amsBrandMapper.updateByExampleSelective(amsBrand, example);
        return count;
    }
}
