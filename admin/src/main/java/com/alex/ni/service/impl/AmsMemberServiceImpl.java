package com.alex.ni.service.impl;

import com.alex.ni.dao.AmsMemberDao;
import com.alex.ni.dto.MemberInfo;
import com.alex.ni.mapper.AmsMemberMapper;
import com.alex.ni.model.AmsMember;
import com.alex.ni.model.AmsMemberExample;
import com.alex.ni.service.AmsMemberService;
import com.github.pagehelper.PageHelper;
import io.swagger.models.auth.In;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

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

    @Override
    public List<AmsMember> list(Integer memberId, String memberName, Integer pageNum, Integer pageSize) {
        PageHelper.startPage(pageNum,pageSize);
        AmsMemberExample example = new AmsMemberExample();
        AmsMemberExample.Criteria criteria= example.createCriteria();
        if (memberId!=null){
            criteria.andIdEqualTo(memberId);
        }
        if (!StringUtils.isEmpty(memberName)){
            criteria.andNicknameLike("%" + memberName + "%");
        }
        List<AmsMember> list = memberMapper.selectByExample(example);
        return list;
    }

    @Override
    public Integer dong(Integer memberId) {
        AmsMember amsMember = new AmsMember();
        amsMember.setStatus(1);
        amsMember.setId(memberId);
        Integer record = memberMapper.updateByPrimaryKeySelective(amsMember);
        return record;
    }


}
