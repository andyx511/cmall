package com.alex.ni.service;

import com.alex.ni.model.AmsCart;

import java.util.List;

/**
 * @author NiDingbo
 * @date 2019/10/8
 * @des
 */
public interface AmsCartService {
    /**
     * 加入购物车
     * @param cart
     * @return Integer
     */
    Integer addCart(AmsCart cart);
    /**
    * 修改购物车商品数量
    */
    Integer editCart(Integer id,Integer num);
    /**
    * 删除商品
    */
    Integer deleteCart(List<Integer> ids);
    /**
    * 购物车列表
    */
    List<AmsCart> cartList(Integer userId);

    /**
     * 劳资就是不想写注释
     * @param userId
     * @return
     */
    Integer count(Integer userId);

}
