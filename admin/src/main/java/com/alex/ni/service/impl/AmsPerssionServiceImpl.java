package com.alex.ni.service.impl;

import com.alex.ni.dto.AmsPermissionList;
import com.alex.ni.mapper.AmsPerssionMapper;
import com.alex.ni.model.AmsPerssion;
import com.alex.ni.model.AmsPerssionExample;
import com.alex.ni.service.AmsPerssionService;
import com.alex.ni.util.NodeUtil;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

/**
 * @author NiDingbo
 * @date 2019/9/18
 * @des
 */
@Service
public class AmsPerssionServiceImpl implements AmsPerssionService {

    @Autowired
    private AmsPerssionMapper amsPerssionMapper;

    @Override
    public List<AmsPermissionList> treeList() {
        List<AmsPerssion> list = amsPerssionMapper.selectByExample(new AmsPerssionExample());
        List<AmsPermissionList> result = list.stream()
                .filter(permission -> permission.getPid().equals(0))
                .map(permission -> covert(permission,list)).collect(Collectors.toList());
        return result;
    }

    @Override
    public List<AmsPermissionList> treeList(Integer id) {//权限id
        AmsPerssionExample example = new AmsPerssionExample();
        List<AmsPerssion> list = amsPerssionMapper.selectByExample(example);
        List<AmsPermissionList> result = list.stream()
                .filter(permission -> permission.getPid().equals(0))
                .map(permission -> covert(permission,list)).collect(Collectors.toList());

        NodeUtil nodeUtil = new NodeUtil();
        List<AmsPermissionList> childrenlist = nodeUtil.getChildNodes(result,id.longValue());
        return childrenlist;
    }

    private AmsPermissionList covert(AmsPerssion permission, List<AmsPerssion> permissionList){
        AmsPermissionList node = new AmsPermissionList();
        BeanUtils.copyProperties(permission,node);
        List<AmsPermissionList> children = permissionList.stream()
                .filter(subPermission -> subPermission.getPid().equals(permission.getId()))
                .map(subPermission -> covert(subPermission,permissionList)).collect(Collectors.toList());
        node.setChildren(children);
        return node;
    }
}
