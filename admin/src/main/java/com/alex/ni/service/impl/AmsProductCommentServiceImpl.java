package com.alex.ni.service.impl;

import com.alex.ni.bo.AdminUserDetails;
import com.alex.ni.dao.AmsProductDao;
import com.alex.ni.mapper.AmsProductCommentMapper;
import com.alex.ni.mapper.AmsProductMapper;
import com.alex.ni.model.*;
import com.alex.ni.service.AmsProductCommentService;
import com.alex.ni.service.AmsProductService;
import com.alex.ni.service.UmsAdminService;
import com.github.pagehelper.PageHelper;
import org.aspectj.lang.annotation.Aspect;
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
    @Autowired
    private AmsProductMapper productMapper;

    @Override
    public List<AmsProductComment> list(Integer productId,Integer pageNum,Integer pageSize) {
        PageHelper.startPage(pageNum, pageSize);
        AmsProductCommentExample example = new AmsProductCommentExample();
        example.createCriteria().andProductIdEqualTo(productId);
        example.setOrderByClause(" create_time desc ");
        List<AmsProductComment> list = commentMapper.selectByExample(example);
        return list;
    }

    @Override
    public Integer add(AmsProductComment comment) {
        AdminUserDetails details = adminService.getCurrentUser();
        UmsAdmin admin = details.getUmsAdmin();
        comment.setUserId(admin.getId().intValue());
        comment.setUserName(admin.getNickName());
        AmsProduct p = productMapper.selectByPrimaryKey(comment.getProductId());
        p.setCommentNum(p.getCommentNum()+1);
        productMapper.updateByPrimaryKeySelective(p);
        Integer record = commentMapper.insertSelective(comment);
        return record;
    }

    @Override
    public Integer delete(Integer id) {
        Integer record= commentMapper.deleteByPrimaryKey(id);
        return record;
    }
}
