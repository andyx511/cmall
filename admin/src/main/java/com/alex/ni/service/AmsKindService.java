package com.alex.ni.service;

import com.alex.ni.dto.AmsKindQueryParam;
import com.alex.ni.model.AmsKind;

import java.util.List;

/**
 * @author NiDingbo
 * @date 2019/9/23
 * @des
 */
public interface AmsKindService {
    /**
    * 列表
    */
    List<AmsKind> list(AmsKindQueryParam param,Integer pageNum,Integer pageSize);
    /**
    * 添加
    */
    Integer add(AmsKind amsKind);
    AmsKind detail(Integer id);
    Integer update(AmsKind kind);

}
