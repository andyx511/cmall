package com.alex.ni.dao;

import io.swagger.models.auth.In;
import org.apache.ibatis.annotations.Param;

/**
 * @author NiDingbo
 * @date 2019/9/29
 * @des
 */
public interface AmsProductDao {
    Integer updateStock(@Param("id") Integer id,@Param("num") Integer num);
    Integer addStock(@Param("id") Integer id,@Param("num") Integer num);
    Integer updateNum(@Param("id") Integer id, @Param("num") Integer num);
}
