package com.alex.ni.dao;

import org.apache.ibatis.annotations.Param;

/**
 * @author NiDingbo
 * @date 2019/10/8
 * @des
 */
public interface AmsCartDao {
    Integer updateCart(@Param("memberId") Integer memberId, @Param("productId") Integer productId, @Param("num") Integer num);
}
