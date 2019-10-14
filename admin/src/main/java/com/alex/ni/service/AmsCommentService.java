package com.alex.ni.service;

import com.alex.ni.model.AmsProductComment;

/**
 * @author NiDingbo
 * @date 2019/10/14
 * @des
 */
public interface AmsCommentService {
    /**
     * 添加评论信息
     * @param comment
     * @return Integer
     */
    Integer addComment(AmsProductComment comment);
}
