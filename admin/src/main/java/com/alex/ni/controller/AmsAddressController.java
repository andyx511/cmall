package com.alex.ni.controller;

import com.alex.ni.api.CommonResult;
import com.alex.ni.bo.AdminUserDetails;
import com.alex.ni.bo.UserDetail;
import com.alex.ni.model.AmsAddress;
import com.alex.ni.model.AmsBrand;
import com.alex.ni.model.UmsAdmin;
import com.alex.ni.service.AmsAddressService;
import com.alex.ni.service.UmsAdminService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @author NiDingbo
 * @date 2019/10/9
 * @des
 */
@Controller
@Api(tags = "地址", description = "地址")
@RequestMapping("/address")
public class AmsAddressController {
    @Autowired
    private AmsAddressService addressService;
    @Autowired
    private UmsAdminService adminService;

    @ApiOperation("添加地址")
    @RequestMapping(value = "/add",method = RequestMethod.POST)
    @ResponseBody
    public CommonResult add(@RequestBody AmsAddress address ){
        Integer record = addressService.add(address);
        return CommonResult.success(record);
    }

    @ApiOperation("地址列表")
    @RequestMapping(value = "/list",method = RequestMethod.GET)
    @ResponseBody
    public CommonResult list(){
        AdminUserDetails detail = adminService.getCurrentUser();
        UmsAdmin admin = detail.getUmsAdmin();
        List<AmsAddress> record = addressService.list(admin.getId().intValue());
        return CommonResult.success(record);
    }

    @ApiOperation("地址修改")
    @RequestMapping(value = "/edit",method = RequestMethod.POST)
    @ResponseBody
    public CommonResult edit(@RequestBody AmsAddress address){
        Integer record = addressService.edit(address);
        return CommonResult.success(record);
    }

    @ApiOperation("地址删除")
    @RequestMapping(value = "/delete/{id}",method = RequestMethod.GET)
    @ResponseBody
    public CommonResult edit(@PathVariable Integer id){
        Integer record = addressService.delete(id);
        return CommonResult.success(record);
    }

}
