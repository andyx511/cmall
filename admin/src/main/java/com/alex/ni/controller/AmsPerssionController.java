package com.alex.ni.controller;

import com.alex.ni.api.CommonResult;
import com.alex.ni.dto.AmsPermissionList;
import com.alex.ni.service.AmsPerssionService;
import com.alex.ni.util.RandomValidateCodeUtil;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * @author NiDingbo
 * @date 2019/9/18
 * @des
 */
@Controller
@Api(tags = "权限Controller", description = "权限Controller")
@RequestMapping("/perssion")
public class AmsPerssionController {
    @Autowired
    private AmsPerssionService amsPerssionService;

    @ApiOperation("获取权限tree")
    @RequestMapping(value = "/treeList", method = RequestMethod.GET)
    @ResponseBody
    public CommonResult test() {
        List<AmsPermissionList> lists = amsPerssionService.treeList();
        return CommonResult.success(lists);
    }
    @ApiOperation("获取权限tree")
    @RequestMapping(value = "/treeList/{id}", method = RequestMethod.GET)
    @ResponseBody
    public CommonResult treeID(@PathVariable Integer id) {
        List<AmsPermissionList> lists = amsPerssionService.treeList(id);
        return CommonResult.success(lists);
    }

}
