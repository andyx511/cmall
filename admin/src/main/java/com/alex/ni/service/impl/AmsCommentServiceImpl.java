package com.alex.ni.service.impl;

import com.alex.ni.bo.AdminUserDetails;
import com.alex.ni.mapper.AmsProductCommentMapper;
import com.alex.ni.model.AmsProductComment;
import com.alex.ni.model.UmsAdmin;
import com.alex.ni.service.AmsCommentService;
import com.alex.ni.service.UmsAdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;

/**
 * @author NiDingbo
 * @date 2019/10/14
 * @des
 */
@Service
public class AmsCommentServiceImpl implements AmsCommentService {

    @Autowired
    private AmsProductCommentMapper commentMapper;
    @Autowired
    private UmsAdminService adminService;

    @Override
    public Integer addComment(AmsProductComment comment) {
        AdminUserDetails details = adminService.getCurrentUser();
        UmsAdmin admin = details.getUmsAdmin();
        comment.setUserId(admin.getId().intValue());
        comment.setCreateTime(new Date());
        Integer record = commentMapper.insertSelective(comment);
        return record;
    }
}
