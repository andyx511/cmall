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

import java.util.ArrayList;
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
    public List<AmsPermissionList> treeList(Integer pid) {//权限父id
        AmsPerssionExample example = new AmsPerssionExample();
        List<AmsPerssion> list = amsPerssionMapper.selectByExample(example);
        List<AmsPerssion> childList = childList1(list, pid);
        List<AmsPermissionList> result = childList.stream()
                .filter(permission -> permission.getId().equals(pid))
                .map(permission -> covert(permission,list)).collect(Collectors.toList());
        return result;
    }
    // 将权限转换为带有子级的权限对象
    private AmsPermissionList covert(AmsPerssion permission, List<AmsPerssion> permissionList){
        AmsPermissionList node = new AmsPermissionList();
        BeanUtils.copyProperties(permission,node);
        List<AmsPermissionList> children = permissionList.stream()
                .filter(subPermission -> subPermission.getPid().equals(permission.getId()))
                .map(subPermission -> covert(subPermission,permissionList)).collect(Collectors.toList());
        node.setChildren(children);
        return node;
    }
    // 权限子列表
    private List<AmsPerssion> childList(List<AmsPerssion> amsPerssionList ,Integer pid){
        List<AmsPerssion> list = new ArrayList<AmsPerssion>();
        for (AmsPerssion amsPerssion : amsPerssionList){
            if (amsPerssion.getPid() == pid){
                childList(amsPerssionList, amsPerssion.getId());
                list.add(amsPerssion);
            }
        }
        return list;
    }
    // 自己及子列表
    private List<AmsPerssion> childList1(List<AmsPerssion> amsPerssionList ,Integer id){
        List<AmsPerssion> list = new ArrayList<AmsPerssion>();
        for (AmsPerssion amsPerssion : amsPerssionList){
            if (amsPerssion.getId() == id){
                childList(amsPerssionList, amsPerssion.getId());
                list.add(amsPerssion);
            }
        }
        return list;
    }
}
