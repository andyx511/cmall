package com.alex.ni.service;

import com.alex.ni.dto.AmsProductQueryParam;
import com.alex.ni.model.AmsProduct;

import java.util.List;

/**
 * @author NiDingbo
 * @date 2019/9/21
 * @des
 */
public interface AmsProductService {

   /**
   * 添加商品
   */
   Integer add(AmsProduct amsProduct);
   /**
   * 列表
   */
   List<AmsProduct> list(AmsProductQueryParam param,Integer pageNum,Integer pageSize);
   /*
    *查看详情
    */
   AmsProduct detail (Integer id);

}
