package com.alex.ni.controller;

import com.alex.ni.api.CommonPage;
import com.alex.ni.api.CommonResult;
import com.alex.ni.dto.AmsProductQueryParam;
import com.alex.ni.model.AmsProduct;
import com.alex.ni.service.AmsReportService;
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

    @ApiOperation("商品列表")
    @RequestMapping(value = "/list" ,method = RequestMethod.GET)
    @ResponseBody
    public CommonResult list(){
        List<Map> list = reportService.systemVisied();
        return CommonResult.success(list);
    }
}
