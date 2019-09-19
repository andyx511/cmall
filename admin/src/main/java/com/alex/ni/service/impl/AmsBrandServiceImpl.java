package com.alex.ni.service.impl;

import com.alex.ni.dto.AmsBrandQueryParam;
import com.alex.ni.mapper.AmsBrandMapper;
import com.alex.ni.mapper.AmsPerssionMapper;
import com.alex.ni.model.AmsBrand;
import com.alex.ni.model.AmsBrandExample;
import com.alex.ni.model.AmsPerssionExample;
import com.alex.ni.service.AmsBrandService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
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
        List<AmsBrand> list = amsBrandMapper.selectByExample(new AmsBrandExample());
        return list;
    }
}
