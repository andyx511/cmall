package com.alex.ni.service.impl;

import com.alex.ni.dto.AmsProductQueryParam;
import com.alex.ni.mapper.AmsProductMapper;
import com.alex.ni.model.AmsProduct;
import com.alex.ni.model.AmsProductExample;
import com.alex.ni.service.AmsProductService;
import com.github.pagehelper.util.StringUtil;
import io.swagger.annotations.Api;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author NiDingbo
 * @date 2019/9/21
 * @des
 */
@Service
public class AmsProductServiceImpl implements AmsProductService {
    @Autowired
    private AmsProductMapper amsProductMapper;

    @Override
    public Integer add(AmsProduct amsProduct) {
        Integer record = amsProductMapper.insert(amsProduct);
        return record;
    }

    @Override
    public List<AmsProduct> list(AmsProductQueryParam param, Integer pageNum, Integer pageSize) {
        AmsProductExample example = new AmsProductExample();
        AmsProductExample.Criteria criteria = example.createCriteria();
        if (!StringUtils.isEmpty(param.getBrand())){
            criteria.andBrandEqualTo(param.getBrand());
        }
        if (!StringUtils.isEmpty(param.getIsNew())){
            criteria.andIsNewEqualTo(param.getIsNew());
        }
        if (!StringUtils.isEmpty(param.getIsPublic())){
            criteria.andIsPublicEqualTo(param.getIsPublic());
        }
        if (!StringUtils.isEmpty(param.getKind())){
            criteria.andKindEqualTo(param.getKind());
        }
        if (!StringUtil.isEmpty(param.getName())){
            criteria.andNameLike("%" + param + "%");
        }
        if (param.getMinPrice()!=null){
            criteria.andPicGreaterThanOrEqualTo(param.getMinPrice().toString());
        }
        if (param.getMaxPrice()!=null){
            criteria.andPicLessThanOrEqualTo(param.getMaxPrice().toString());
        }
        List<AmsProduct> list = amsProductMapper.selectByExample(example);
        return list;
    }
}
