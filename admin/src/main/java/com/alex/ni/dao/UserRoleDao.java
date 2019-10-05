package com.alex.ni.dao;

import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author NiDingbo
 * @date 2019/10/5 14:45
 */
public interface UserRoleDao {

    /**
     * fetch data by rule id
     *  用户所有的角色
     */
    List<String> getUserRoles(@Param("id") Long id);
}
