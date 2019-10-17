package com.alex.ni.service;

import com.alex.ni.dto.MemberInfo;
import com.alex.ni.model.AmsMember;

import java.util.List;

/**
 * @author NiDingbo
 * @date 2019/10/6 10:47
 */
public interface AmsMemberService {

    MemberInfo getInfo(Integer userId);

    Integer editInfo(AmsMember member);

    List<AmsMember> list(Integer member,String memberName,Integer pageNum,Integer pageSize);

    Integer dong(Integer memberId);
}
