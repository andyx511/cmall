package com.alex.ni.service.impl;

import com.alex.ni.dao.AmsMemberDao;
import com.alex.ni.dto.MemberInfo;
import com.alex.ni.mapper.AmsMemberMapper;
import com.alex.ni.model.AmsMember;
import com.alex.ni.model.AmsMemberExample;
import com.alex.ni.service.AmsMemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author NiDingbo
 * @date 2019/10/6 10:47
 */
@Service
public class AmsMemberServiceImpl implements AmsMemberService {

    @Autowired
    private AmsMemberDao memberDao;
    @Autowired
    private AmsMemberMapper memberMapper;

    @Override
    public MemberInfo getInfo(Integer userId) {
        MemberInfo info = memberDao.getInfo(userId);
        return info;
    }

    @Override
    public Integer editInfo(AmsMember member) {
        AmsMemberExample example = new AmsMemberExample();
        example.createCriteria().andIdEqualTo(member.getId());
        Integer record = memberMapper.updateByExampleSelective(member,example);
        return record;
    }
}
