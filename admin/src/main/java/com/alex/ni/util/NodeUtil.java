package com.alex.ni.util;

/**
 * @author NiDingbo
 * @date 2019/9/18
 * @des
 */


import com.alex.ni.dto.AmsPermissionList;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class NodeUtil {

    List<AmsPermissionList> returnList = new ArrayList<AmsPermissionList>();

    /**
     * 根据父节点的ID获取所有子节点
     * @param list 分类
     * @param typeId 传入的父节点ID
     * @return List<AmsPermissionList>
     */
    public List<AmsPermissionList> getChildNodes(List<AmsPermissionList> list, Long typeId) {
        if(list == null && typeId == null) return null;
        for (Iterator<AmsPermissionList> iterator = list.iterator(); iterator.hasNext();) {
            AmsPermissionList node = (AmsPermissionList) iterator.next();
            // 一、根据传入的某个父节点ID,遍历该父节点的所有子节点
            if (node.getPid() != 0 && typeId.equals(node.getId())) {
                recursionFn(list, node);
            }
            // 二、遍历所有的父节点下的所有子节点
			/*if (node.getParentId()==0) {
				recursionFn(list, node);
			}*/
        }
        return returnList;
    }

    /**
     * 根据父节点的ID获取所有子节点
     * @param list 分类
     * @param typeId 传入的父节点ID
     * @return String
     */
    public String getChildNodesStr(List<AmsPermissionList> list, Long typeId) {
        if(list == null && typeId == null) return "";
        for (Iterator<AmsPermissionList> iterator = list.iterator(); iterator.hasNext();) {
            AmsPermissionList node = (AmsPermissionList) iterator.next();
            // 一、根据传入的某个父节点ID,遍历该父节点的所有子节点
            if (node.getPid() != 0 && typeId.equals(node.getId())) {
                recursionFn(list, node);
            }
            // 二、遍历所有的父节点下的所有子节点
			/*if (node.getParentId()==0) {
				recursionFn(list, node);
			}*/
        }
        return returnList.toString();
    }


    private void recursionFn(List<AmsPermissionList> list, AmsPermissionList node) {
        List<AmsPermissionList> childList = getChildList(list, node);// 得到子节点列表
        if (hasChild(list, node)) {// 判断是否有子节点
            returnList.add(node);
            Iterator<AmsPermissionList> it = childList.iterator();
            while (it.hasNext()) {
                AmsPermissionList n = (AmsPermissionList) it.next();
                recursionFn(list, n);
            }
        } else {

            returnList.add(node);
        }
    }


    /**
     * 根据父节点获取他的下一级子节点（注意是只得到下一级的，不是全部的）
     * @param list 分类表
     * @return List<SourDir>
     */
    public List<AmsPermissionList> getChildList(List<AmsPermissionList> list, AmsPermissionList node) {
        List<AmsPermissionList> nodeList = new ArrayList<AmsPermissionList>();
        Iterator<AmsPermissionList> it = list.iterator();
        while (it.hasNext()) {
            AmsPermissionList n = (AmsPermissionList) it.next();
            if (n.getPid().equals(node.getId())) {
                nodeList.add(n);
            }
        }
        return nodeList;
    }

    /**
     * 根据父节点判断是否有子节点
     * @param list 分类表
     * @return boolean
     */
    public boolean hasChild(List<AmsPermissionList> list, AmsPermissionList node) {
        return getChildList(list, node).size() > 0 ? true : false;
    }



}
