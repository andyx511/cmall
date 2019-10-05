package com.alex.ni.service;

import com.alex.ni.model.AmsUser;

/**
 * @author Alex
 */
public interface AmsUserService {

    /*
     *根据phone获得用户
     */
    AmsUser getUserByPhone(String phone);

    /*
     *登录
     */
    String login (String phone,String password);

    /**
     * 获得当前用户详细
     */
/*    AmsUser getCurrentUser();*/

}
