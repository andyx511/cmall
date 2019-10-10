package com.alex.ni.controller;

import com.alex.ni.api.CommonResult;
import com.alex.ni.bo.AdminUserDetails;
import com.alex.ni.dto.AmsPermissionList;
import com.alex.ni.model.AmsCart;
import com.alex.ni.model.UmsAdmin;
import com.alex.ni.service.AmsCartService;
import com.alex.ni.service.UmsAdminService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.math.BigDecimal;
import java.util.List;

/**
 * @author NiDingbo
 * @date 2019/10/8
 * @des
 */
@Controller
@Api(tags = "购物车", description = "购物车")
@RequestMapping("/cart")
public class AmsCartController {

    @Autowired
    private AmsCartService cartService;
    @Autowired
    private UmsAdminService adminService;


    @ApiOperation("获取购物车")
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    @ResponseBody
    public CommonResult list() {
        AdminUserDetails details = adminService.getCurrentUser();
        UmsAdmin user = details.getUmsAdmin();
        List<AmsCart> list = cartService.cartList(user.getId().intValue());
        return CommonResult.success(list);
    }
    @ApiOperation("添加入购物车")
    @RequestMapping(value = "/add", method = RequestMethod.POST)
    @ResponseBody
    public CommonResult add(@RequestBody AmsCart cart) {
        AdminUserDetails details = adminService.getCurrentUser();
        //记录用户id
        UmsAdmin user = details.getUmsAdmin();
        cart.setMemberId(user.getId().intValue());
        // 计算总价
        cart.setTotalPrice(cart.getPrice().multiply(new BigDecimal(cart.getNum())));
        Integer record = cartService.addCart(cart);
        return CommonResult.success(record);
    }

    @ApiOperation("修改购物车的数量")
    @RequestMapping(value = "/edit", method = RequestMethod.POST)
    @ResponseBody
    public CommonResult edit(@RequestBody AmsCart cart) {

        Integer record = cartService.editCart(cart.getId(),cart.getNum());
        return CommonResult.success(record);
    }
    @ApiOperation("删除购物车")
    @RequestMapping(value = "/delete", method = RequestMethod.POST)
    @ResponseBody
    public CommonResult delete(@RequestBody List<Integer> ids) {
        Integer record = cartService.deleteCart(ids);
        return CommonResult.success(record);
    }
}
