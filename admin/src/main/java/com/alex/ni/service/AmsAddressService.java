package com.alex.ni.service;

import com.alex.ni.model.AmsAddress;
import io.swagger.models.auth.In;

import java.util.List;

/**
 * @author NiDingbo
 * @date 2019/10/9
 * @des
 */
public interface AmsAddressService {
    /**
    * 地址列表
    */
    List<AmsAddress> list(Integer userId);
    /**
    * 增加地址
    */
    Integer add(AmsAddress address);
    /**
    * 删除地址
    */
    Integer delete(Integer addressId);
    /**
    * 修改地址
    */
    Integer edit(AmsAddress address);
    /**
     * 地址详情
     */
    AmsAddress detail(Integer id);
}
