package com.alex.ni.service;

import com.alex.ni.dto.MemberInfo;
import com.alex.ni.model.AmsMember;

/**
 * @author NiDingbo
 * @date 2019/10/6 10:47
 */
public interface AmsMemberService {

    MemberInfo getInfo(Integer userId);

    Integer editInfo(AmsMember member);


}
