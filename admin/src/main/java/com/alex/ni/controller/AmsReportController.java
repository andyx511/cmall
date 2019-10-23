package com.alex.ni.controller;

import com.alex.ni.api.CommonPage;
import com.alex.ni.api.CommonResult;
import com.alex.ni.bo.AdminUserDetails;
import com.alex.ni.dto.AmsProductQueryParam;
import com.alex.ni.model.AmsProduct;
import com.alex.ni.service.AmsReportService;
import com.alex.ni.service.UmsAdminService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Map;

/**
 * @author NiDingbo
 * @date 2019/10/11
 * @des
 */
@Controller
@Api(tags = "报表", description = "报表")
@RequestMapping("/report")
public class AmsReportController {

    @Autowired
    private AmsReportService reportService;
    @Autowired
    private UmsAdminService adminService;

    @ApiOperation("访问量")
    @RequestMapping(value = "/visit" ,method = RequestMethod.GET)
    @ResponseBody
    public CommonResult list(){
        AdminUserDetails details = adminService.getCurrentUser();
        List<Map> list = reportService.systemVisied(details.getUmsAdmin().getId().intValue());
        return CommonResult.success(list);
    }
    @ApiOperation("产品种类分布")
    @RequestMapping(value = "/kind" ,method = RequestMethod.GET)
    @ResponseBody
    public CommonResult kind(){
        List<Map> list = reportService.productKind();
        return CommonResult.success(list);
    }
    @ApiOperation("访问量")
    @RequestMapping(value = "/brand" ,method = RequestMethod.GET)
    @ResponseBody
    public CommonResult brand(){
        List<Map> list = reportService.productBrand();
        return CommonResult.success(list);
    }
    @ApiOperation("订单")
    @RequestMapping(value = "/order" ,method = RequestMethod.GET)
    @ResponseBody
    public CommonResult order(){
        List<Map> list = reportService.order();
        return CommonResult.success(list);
    }
    @ApiOperation("stat")
    @RequestMapping(value = "/stat" ,method = RequestMethod.GET)
    @ResponseBody
    public CommonResult stat(){
        Map<String, Object> map = reportService.map();
        return CommonResult.success(map);
    }
}
