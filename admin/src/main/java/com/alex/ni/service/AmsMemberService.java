package com.alex.ni.service;

import com.alex.ni.dto.MemberInfo;
import com.alex.ni.model.AmsMember;

import java.math.BigDecimal;
import java.util.List;

/**
 * @author NiDingbo
 * @date 2019/10/6 10:47
 */
public interface AmsMemberService {

    /**
     * @param userId
     * @return
     */
    MemberInfo getInfo(Integer userId);

    /**
     * @param member
     * @return
     */
    Integer editInfo(AmsMember member);

    /**
     * @param member
     * @param memberName
     * @param pageNum
     * @param pageSize
     * @return
     */
    List<AmsMember> list(Integer member,String memberName,Integer pageNum,Integer pageSize);

    /**
     * @param memberId
     * @return
     */
    Integer dong(Integer memberId);

    /**
     * @param memberId
     * @return
     */
    Integer jie(Integer memberId);

    /**
     * 充值
     * @param money
     * @return
     */
    Integer chong (BigDecimal money);
}
