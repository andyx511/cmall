package com.alex.ni.controller;

import cn.hutool.core.date.DateTime;
import com.alex.ni.api.CommonPage;
import com.alex.ni.api.CommonResult;
import com.alex.ni.bo.AdminUserDetails;
import com.alex.ni.dto.AmsOrderParam;
import com.alex.ni.dto.AmsOrderReturnParam;
import com.alex.ni.dto.AmsPermissionList;
import com.alex.ni.dto.OrderInfo;
import com.alex.ni.model.AmsAddress;
import com.alex.ni.model.AmsOrderReturn;
import com.alex.ni.model.UmsAdmin;
import com.alex.ni.service.AmsOrderService;
import com.alex.ni.service.UmsAdminService;
import com.github.pagehelper.PageInfo;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.Date;
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
        if (record ==-1){
            return CommonResult.failed("库存不足");
        }
        return CommonResult.success(record);
    }

    @ApiOperation("选择地址")
    @RequestMapping(value = "/chooseAddress/{id}", method = RequestMethod.GET)
    @ResponseBody
    public CommonResult chooseAddress(@RequestParam Integer addressId, @PathVariable Integer id) {
        Integer record = orderService.orderAddress(addressId,id);
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
    public CommonResult memberOrderList(@RequestParam(value = "pageNum" ,defaultValue = "1") Integer pageNum,
                                        @RequestParam(value = "pageSize",defaultValue = "5") Integer pageSize) {
        AdminUserDetails details = adminService.getCurrentUser();
        UmsAdmin admin = details.getUmsAdmin();

        AmsOrderParam param = new AmsOrderParam();
        param.setUserId(admin.getId().intValue());
        PageInfo<OrderInfo> list = orderService.list(param,pageNum,pageSize);
        return CommonResult.success(list);
    }

    @ApiOperation("取消订单")
    @RequestMapping(value = "/cancelOrder/{id}", method = RequestMethod.POST)
    @ResponseBody
    public CommonResult cancelOrder( @PathVariable Integer id) {
        Integer record = orderService.orderStatus(6, id);
        return CommonResult.success(record);
    }
    @ApiOperation("确认收货")
    @RequestMapping(value = "/getp/{id}", method = RequestMethod.GET)
    @ResponseBody
    public CommonResult getp( @PathVariable Integer id) {
        Integer record = orderService.orderStatus(3, id);

        return CommonResult.success(record);
    }
    /*   --------------------管理员部分--------------------------  */

    @ApiOperation("订单列表")
    @RequestMapping(value = "/orderList", method = RequestMethod.GET)
    @ResponseBody
    public CommonResult orderList(AmsOrderParam param,
                                 @RequestParam(value = "pageNum" ,defaultValue = "1") Integer pageNum,
                                 @RequestParam(value = "pageSize",defaultValue = "10") Integer pageSize) {
        PageInfo<OrderInfo> list = orderService.list(param,pageNum,pageSize);
        return CommonResult.success(CommonPage.restPage(list));
    }

    @ApiOperation("订单详情")
    @RequestMapping(value = "/detail/{id}", method = RequestMethod.GET)
    @ResponseBody
    public CommonResult orderList(@PathVariable Integer id) {
        OrderInfo info = orderService.detail(id);
        return CommonResult.success(info);
    }

    @ApiOperation("订单发货")
    @RequestMapping(value = "/delivery/{id}", method = RequestMethod.POST)
    @ResponseBody
    public CommonResult delivery(@PathVariable Integer id) {
        Integer record= orderService.orderDelivery(id);
        return CommonResult.success(record);
    }

    @ApiOperation("订单申请退款")
    @RequestMapping(value = "/applyReturn", method = RequestMethod.POST)
    @ResponseBody
    public CommonResult applyReturn(@RequestBody AmsOrderReturn amsOrderReturn ) {
        AdminUserDetails details = adminService.getCurrentUser();
        UmsAdmin admin = details.getUmsAdmin();
        orderService.orderStatus(8,amsOrderReturn.getOrderId());
        amsOrderReturn.setUserName(admin.getNickName());
        amsOrderReturn.setApplyStatus("1");
        amsOrderReturn.setApplyTime(new Date());
        Integer record= orderService.applyReturn(amsOrderReturn);
        return CommonResult.success(record);
    }

    @ApiOperation("订单申请退款列表")
    @RequestMapping(value = "/applyReturnList", method = RequestMethod.GET)
    @ResponseBody
    public CommonResult applyReturnList(AmsOrderReturnParam param,
                                        @RequestParam(value = "pageNum" ,defaultValue = "1") Integer pageNum,
                                        @RequestParam(value = "pageSize",defaultValue = "10") Integer pageSize) {
        List<AmsOrderReturn> record = orderService.returnList(param, pageNum,pageSize);
        return CommonResult.success(CommonPage.restPage(record));
    }
    
}
