package com.alex.ni.service;

import com.alex.ni.dto.AmsBrandQueryParam;
import com.alex.ni.model.AmsBrand;

import java.util.List;

/**
 * @author NiDingbo
 * @date 2019/9/19
 * @des
 */
public interface AmsBrandService {
    List<AmsBrand> list(AmsBrandQueryParam amsBrandQueryParam, Integer pageNum, Integer pageSize);
}
