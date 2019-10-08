package com.alex.ni.dao;

import com.alex.ni.dto.MemberInfo;
import org.apache.ibatis.annotations.Param;

/**
 * @author NiDingbo
 * @date 2019/10/8 20:55
 */
public interface AmsMemberDao {

    MemberInfo getInfo(@Param("userId") Integer userId);
}
