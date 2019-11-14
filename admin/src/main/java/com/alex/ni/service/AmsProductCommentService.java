package com.alex.ni.service;

import com.alex.ni.model.AmsProductComment;

import java.util.List;

/**
 * @author NiDingbo
 * @date 2019/10/12
 * @des
 */
public interface AmsProductCommentService {

    /**
     * 查询
     * @param productId
     * @return
     */
    List<AmsProductComment> list(Integer productId,Integer pageNum,Integer pageSize);

    /**
     * 添加评论
     * @param comment
     * @return
     */
    Integer add(AmsProductComment comment);

    /**
     * 删除评论
     * @param id
     * @return
     */
    Integer delete(Integer id);


}
