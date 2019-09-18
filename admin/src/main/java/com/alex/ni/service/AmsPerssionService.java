package com.alex.ni.service;

import com.alex.ni.dto.AmsPermissionList;
import com.alex.ni.model.AmsPerssion;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * @author NiDingbo
 * @date 2019/9/18
 * @des
 */
public interface AmsPerssionService{

    List<AmsPermissionList> treeList();

    List<AmsPermissionList> treeList(Integer id);

}
