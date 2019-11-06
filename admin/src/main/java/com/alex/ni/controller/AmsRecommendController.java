package com.alex.ni.controller;

import com.alex.ni.api.CommonResult;
import com.alex.ni.model.AmsBrandRecommend;
import com.alex.ni.model.AmsProduct;
import com.alex.ni.service.*;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @author NiDingbo
 * @date 2019/11/6
 * @des
 */
@Api(tags = "推荐",description = "推荐")
@Controller
@RequestMapping("/recommend")
public class AmsRecommendController {

    @Autowired
    private AmsBrandRecommendService brandRecommendService;
    @Autowired
    private AmsGoodRecommendService goodRecommendService;
    @Autowired
    private AmsNewRecommendService newRecommendService;
    @Autowired
    private AmsHotRecommendService hotRecommendService;

    // 品牌

    @ApiOperation("品牌推荐添加")
    @RequestMapping(value = "/addBrand",method = RequestMethod.POST)
    @ResponseBody
    public CommonResult addBrand(@RequestBody AmsBrandRecommend brandRecommend){
        Integer record = brandRecommendService.add(brandRecommend);
        return CommonResult.success(record);
    }
    @ApiOperation("品牌推荐修改")
    @RequestMapping(value = "/editBrand",method = RequestMethod.POST)
    @ResponseBody
    public CommonResult editBrand(@RequestBody AmsBrandRecommend brandRecommend){
        Integer record = brandRecommendService.edit(brandRecommend);
        return CommonResult.success(record);
    }
    @ApiOperation("品牌推荐列表Admin")
    @RequestMapping(value = "/brandListAdmin",method = RequestMethod.GET)
    @ResponseBody
    public CommonResult brandListAdmin(@RequestParam(value = "pageNum" ,defaultValue = "1") Integer pageNum,
                                       @RequestParam(value = "pageSize",defaultValue = "10") Integer pageSize){
        List<AmsBrandRecommend> record = brandRecommendService.list(pageNum,pageSize);
        return CommonResult.success(record);
    }
    @ApiOperation("品牌推荐列表首页")
    @RequestMapping(value = "/brandListHome",method = RequestMethod.GET)
    @ResponseBody
    public CommonResult brandListHome(){
        List<AmsBrandRecommend> record = brandRecommendService.listHome();
        return CommonResult.success(record);
    }
}
