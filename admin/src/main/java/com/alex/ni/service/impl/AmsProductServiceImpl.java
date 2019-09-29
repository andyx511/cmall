package com.alex.ni.service.impl;

import com.alex.ni.dao.AmsProductDao;
import com.alex.ni.dto.AmsProductQueryParam;
import com.alex.ni.mapper.AmsProductMapper;
import com.alex.ni.model.AmsProduct;
import com.alex.ni.model.AmsProductExample;
import com.alex.ni.service.AmsProductService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.util.StringUtil;
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
    @Autowired
    private AmsProductDao amsProductDao;

    @Override
    public Integer add(AmsProduct amsProduct) {
        Integer record = amsProductMapper.insertSelective(amsProduct);
        return record;
    }

    @Override
    public List<AmsProduct> list(AmsProductQueryParam param, Integer pageNum, Integer pageSize) {
        PageHelper.startPage(pageNum, pageSize);
        AmsProductExample example = new AmsProductExample();
        AmsProductExample.Criteria criteria = example.createCriteria();
        if (!StringUtils.isEmpty(param.getBrand())){
            criteria.andBrandEqualTo(param.getBrand());
        }
        if (param.getIsNew()!=null){
            criteria.andIsNewEqualTo(param.getIsNew());
        }
        if (param.getIsPublic()!=null){
            criteria.andIsPublicEqualTo(param.getIsPublic());
        }
        if (!StringUtils.isEmpty(param.getKind())){
            criteria.andKindEqualTo(param.getKind());
        }

        if (!StringUtil.isEmpty(param.getName())){
            criteria.andNameLike("%" + param.getName() + "%");
        }
        if (param.getStatus() != null){
            criteria.andStatusEqualTo(param.getStatus());
        }
        if (param.getMinPrice()!=null){
            criteria.andPriceGreaterThanOrEqualTo(param.getMinPrice());
        }
        if (param.getMaxPrice()!=null){
            criteria.andPriceLessThanOrEqualTo(param.getMaxPrice());
        }
        criteria.andIsDeleteEqualTo(0);
        example.setOrderByClause(" id desc ");
        List<AmsProduct> list = amsProductMapper.selectByExample(example);
        return list;
    }

    @Override
    public AmsProduct detail(Integer id) {
        AmsProduct amsProduct = amsProductMapper.selectByPrimaryKey(id);
        return amsProduct;
    }

    @Override
    public Integer delete(List<Integer> ids) {
        AmsProductExample example = new AmsProductExample();
        example.createCriteria().andIdIn(ids);
        AmsProduct amsProduct = new AmsProduct();
        amsProduct.setIsDelete(1);
        Integer count = amsProductMapper.updateByExampleSelective(amsProduct, example);
        return count;
    }

    @Override
    public Integer update(AmsProduct amsProduct) {
        Integer record = amsProductMapper.updateByPrimaryKeySelective(amsProduct);
        return record;
    }

    @Override
    public Integer updateStock(Integer id, Integer num) {
        Integer record = amsProductDao.updateStock(id, num);
        return record;
    }

}
