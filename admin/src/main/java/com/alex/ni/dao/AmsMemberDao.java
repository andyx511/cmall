package com.alex.ni.dao;

import com.alex.ni.dto.MemberInfo;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Update;

/**
 * @author NiDingbo
 * @date 2019/10/8 20:55
 */
public interface AmsMemberDao {

    MemberInfo getInfo(@Param("userId") Integer userId);

    /**
     * @param growth
     * @param point
     * @return
     */
    Integer updateP(@Param("growth") Integer growth, @Param("point") Integer point, @Param("userId") Integer userId);
}
