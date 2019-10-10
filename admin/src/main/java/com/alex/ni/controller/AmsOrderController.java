package com.alex.ni.controller;

import com.alex.ni.api.CommonResult;
import com.alex.ni.bo.AdminUserDetails;
import com.alex.ni.dto.AmsPermissionList;
import com.alex.ni.dto.OrderInfo;
import com.alex.ni.model.AmsAddress;
import com.alex.ni.model.UmsAdmin;
import com.alex.ni.service.AmsOrderService;
import com.alex.ni.service.UmsAdminService;
import io.swagger.annotations.Api;
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
@Api(tags = "订单", description = "订单")
@RequestMapping("/order")
public class AmsOrderController  {

    @Autowired
    private AmsOrderService orderService;
    @Autowired
    private UmsAdminService adminService;

    @ApiOperation("生成订单")
    @RequestMapping(value = "/generateOrder", method = RequestMethod.POST)
    @ResponseBody
    public CommonResult generateOrder(@RequestBody List<Integer> ids) {
        //返回生成订单id
        Integer record = orderService.generateOrder(ids);
        return CommonResult.success(record);
    }

    @ApiOperation("选择地址")
    @RequestMapping(value = "/chooseAddress/{id}", method = RequestMethod.POST)
    @ResponseBody
    public CommonResult chooseAddress(@RequestBody AmsAddress address, @PathVariable Integer id) {
        Integer record = orderService.orderAddress(address,id);
        return CommonResult.success(record);
    }

    @ApiOperation("付款")
    @RequestMapping(value = "/payForOrder/{id}", method = RequestMethod.POST)
    @ResponseBody
    public CommonResult chooseAddress( @PathVariable Integer id) {
        //id为订单id
        Integer record = orderService.payForOrder(id);
        if(record == 0){
            return CommonResult.failed("余额不足");
        }
        return CommonResult.success(record);
    }

    @ApiOperation("修改订单状态")
    @RequestMapping(value = "/changeOrderStatus/{id}", method = RequestMethod.POST)
    @ResponseBody
    public CommonResult changeOrderStatus( @PathVariable Integer id,@RequestParam Integer status) {
        //id为订单id
        Integer record = orderService.orderStatus(status, id);
        return CommonResult.success(record);
    }

    @ApiOperation("用户自身订单列表")
    @RequestMapping(value = "/memberOrderList", method = RequestMethod.GET)
    @ResponseBody
    public CommonResult memberOrderList() {
        AdminUserDetails details = adminService.getCurrentUser();
        UmsAdmin admin = details.getUmsAdmin();
        List<OrderInfo>list = orderService.list(admin.getId().intValue());
        return CommonResult.success(list);
    }

}
