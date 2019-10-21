package com.alex.ni.service.impl;

import com.alex.ni.bo.AdminUserDetails;
import com.alex.ni.mapper.AmsProductCommentMapper;
import com.alex.ni.model.AmsProductComment;
import com.alex.ni.model.AmsProductCommentExample;
import com.alex.ni.model.UmsAdmin;
import com.alex.ni.service.AmsProductCommentService;
import com.alex.ni.service.UmsAdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author NiDingbo
 * @date 2019/10/12
 * @des
 */
@Service
public class AmsProductCommentServiceImpl implements AmsProductCommentService {

    @Autowired
    private AmsProductCommentMapper commentMapper;
    @Autowired
    private UmsAdminService adminService;

    @Override
    public List<AmsProductComment> list(Integer productId) {
        AmsProductCommentExample example = new AmsProductCommentExample();
        example.createCriteria().andProductIdEqualTo(productId);
        List<AmsProductComment> list = commentMapper.selectByExample(example);
        return list;
    }

    @Override
    public Integer add(AmsProductComment comment) {
        AdminUserDetails details = adminService.getCurrentUser();
        UmsAdmin admin = details.getUmsAdmin();
        comment.setUserId(admin.getId().intValue());
        comment.setUserName(admin.getNickName());
        Integer record = commentMapper.insertSelective(comment);
        return record;
    }

    @Override
    public Integer delete(Integer id) {
        Integer record= commentMapper.deleteByPrimaryKey(id);
        return record;
    }
}
