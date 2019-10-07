package com.alex.ni.service;


import com.alex.ni.bo.AdminUserDetails;
import com.alex.ni.dto.UmsAdminParam;
import com.alex.ni.model.UmsAdmin;
import com.alex.ni.model.UmsPermission;

import java.util.List;

/**
 * 后台管理员Service

 */
public interface UmsAdminService {
    /**
     * 根据用户名获取后台管理员
     */
    UmsAdmin getAdminByUsername(String username);
    /**
     * 登录功能
     * @param username 用户名
     * @param password 密码
     * @return 生成的JWT的token
     */
    String login(String username, String password);

    /**
     * 获取用户所有权限（包括角色权限和+-权限）
     */
    List<UmsPermission> getPermissionList(Long adminId);

    /**
     * 获取当前用户
     */
    AdminUserDetails getCurrentUser();

    /**
     * 注册
     */
    UmsAdmin register(UmsAdminParam umsAdminParam);

    /**
     *
     *获取当前用户的角色
     */
    List<String> getUserRoles(Long userId);

    /**
     * fetch data by rule id
     *重置密码
     */
    Integer reset(UmsAdminParam umsAdminParam);

}
