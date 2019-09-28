package com.alex.ni.controller;

import com.alex.ni.api.CommonPage;
import com.alex.ni.api.CommonResult;
import com.alex.ni.dto.AmsProductQueryParam;
import com.alex.ni.model.AmsBrand;
import com.alex.ni.model.AmsProduct;
import com.alex.ni.service.AmsProductService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @author NiDingbo
 * @date 2019/9/21
 * @des
 */
@Api(tags = "商品",description = "商品")
@Controller
@RequestMapping("/product")
public class AmsProductController {
    @Autowired
    private AmsProductService amsProductService;

    @ApiOperation("商品列表")
    @RequestMapping(value = "/list" ,method = RequestMethod.GET)
    @ResponseBody
    public CommonResult<CommonPage<AmsProduct>> list(AmsProductQueryParam amsProductQueryParam,
                                                   @RequestParam(value = "pageNum" ,defaultValue = "1") Integer pageNum,
                                                   @RequestParam(value = "pageSize",defaultValue = "10") Integer pageSize){
        List<AmsProduct> list = amsProductService.list(amsProductQueryParam, pageNum, pageSize);
        return CommonResult.success(CommonPage.restPage(list));
    }

    @ApiOperation("商品添加")
    @RequestMapping(value = "/add",method = RequestMethod.POST)
    @ResponseBody
    public CommonResult add(@RequestBody AmsProduct amsProduct){
        Integer record = amsProductService.add(amsProduct);
        return CommonResult.success(record);
    }

    @ApiOperation("商品detail")
    @RequestMapping(value = "/detail/{id}",method = RequestMethod.POST)
    @ResponseBody
    public CommonResult detail(@PathVariable("id") Integer id ){
        AmsProduct record = amsProductService.detail(id);
        return CommonResult.success(record);
    }
}
