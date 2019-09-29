package com.alex.ni.dao;

import org.apache.ibatis.annotations.Param;

/**
 * @author NiDingbo
 * @date 2019/9/29
 * @des
 */
public interface AmsProductDao {
    Integer updateStock(@Param("id") Integer id,@Param("num") Integer num);
}
