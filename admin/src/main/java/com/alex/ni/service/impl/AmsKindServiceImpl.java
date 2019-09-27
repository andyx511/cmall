package com.alex.ni.service.impl;

import com.alex.ni.dto.AmsKindQueryParam;
import com.alex.ni.mapper.AmsKindMapper;
import com.alex.ni.model.AmsKind;
import com.alex.ni.model.AmsKindExample;
import com.alex.ni.service.AmsKindService;
import com.github.pagehelper.PageHelper;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author NiDingbo
 * @date 2019/9/23
 * @des
 */
@Service
public class AmsKindServiceImpl implements AmsKindService {
    @Autowired
    private AmsKindMapper kindMapper;
    @Override
    public List<AmsKind> list(AmsKindQueryParam param,Integer pageNum,Integer pageSize) {
        PageHelper.startPage(pageNum, pageSize);
        AmsKindExample example = new AmsKindExample();
        AmsKindExample.Criteria criteria = example.createCriteria();
        if (!StringUtils.isEmpty(param.getName())){
            criteria.andNameLike("%" + param.getName() + "%");
        }
        if (param.getStatus()!=null){
            criteria.andStatusEqualTo(param.getStatus());
        }
        example.setOrderByClause(" id desc");
        List<AmsKind> list = kindMapper.selectByExample(example);
        return list;
    }

    @Override
    public Integer add(AmsKind amsKind) {
        Integer record = kindMapper.insertSelective(amsKind);
        return record;
    }

    @Override
    public AmsKind detail(Integer id) {
        AmsKind kind = kindMapper.selectByPrimaryKey(id);
        return kind;
    }

    @Override
    public Integer update(AmsKind kind) {
        Integer record = kindMapper.updateByPrimaryKeySelective(kind);
        return record;
    }

    @Override
    public Integer delete(Integer id) {
        Integer record = kindMapper.deleteByPrimaryKey(id);
        return record;
    }
}
