package com.alex.ni.controller;

import com.alex.ni.api.CommonResult;
import com.alex.ni.model.*;
import com.alex.ni.service.*;
import com.alex.ni.vo.GoodVo;
import com.alex.ni.vo.HotVo;
import com.alex.ni.vo.NewVo;
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
    private AmsNewRecommendService newRecommendService;
    @Autowired
    private AmsHotRecommendService hotRecommendService;
    @Autowired
    private AmsGoodRecommendService goodRecommendService;

    // 新品

    @ApiOperation("新品推荐添加")
    @RequestMapping(value = "/addNew",method = RequestMethod.POST)
    @ResponseBody
    public CommonResult addNew(@RequestBody AmsNewRecommend newRecommend){
        Integer record = newRecommendService.add(newRecommend);
        return CommonResult.success(record);
    }
    @ApiOperation("新品推荐修改")
    @RequestMapping(value = "/editNew",method = RequestMethod.GET)
    @ResponseBody
    public CommonResult editNew(@RequestParam Integer id,@RequestParam Integer sort){
        AmsNewRecommend newRecommend = new AmsNewRecommend();
        newRecommend.setId(id);
        newRecommend.setSort(sort);
        Integer record = newRecommendService.edit(newRecommend);
        return CommonResult.success(record);
    }
    @ApiOperation("新品推荐列表")
    @RequestMapping(value = "/newList",method = RequestMethod.GET)
    @ResponseBody
    public CommonResult newList(){
        List<NewVo> record = newRecommendService.list();
        return CommonResult.success(record);
    }
    @ApiOperation("删除新品")
    @RequestMapping(value = "/deleteNew/{id}",method = RequestMethod.DELETE)
    @ResponseBody
    public CommonResult deleteNew(@PathVariable Integer id ){
        Integer record = newRecommendService.delete(id);
        return CommonResult.success(record);
    }
    // 热门

    @ApiOperation("热门推荐添加")
    @RequestMapping(value = "/addHot",method = RequestMethod.POST)
    @ResponseBody
    public CommonResult addHot(@RequestBody AmsHotRecommend hotRecommend){
        Integer record = hotRecommendService.add(hotRecommend);
        return CommonResult.success(record);
    }
    @ApiOperation("热门推荐修改")
    @RequestMapping(value = "/editHot",method = RequestMethod.GET)
    @ResponseBody
    public CommonResult editHot(@RequestParam Integer id,@RequestParam Integer sort){
        AmsHotRecommend hotRecommend = new AmsHotRecommend();
        hotRecommend.setId(id);
        hotRecommend.setSort(sort);
        Integer record = hotRecommendService.edit(hotRecommend);
        return CommonResult.success(record);
    }
    @ApiOperation("热门推荐列表")
    @RequestMapping(value = "/hotList",method = RequestMethod.GET)
    @ResponseBody
    public CommonResult hotList(){
        List<HotVo> record = hotRecommendService.list();
        return CommonResult.success(record);
    }
    @ApiOperation("删除热门")
    @RequestMapping(value = "/deleteHot/{id}",method = RequestMethod.DELETE)
    @ResponseBody
    public CommonResult deleteHot(@PathVariable Integer id ){
        Integer record = hotRecommendService.delete(id);
        return CommonResult.success(record);
    }

// 优选

    @ApiOperation("优选推荐添加")
    @RequestMapping(value = "/addGood",method = RequestMethod.POST)
    @ResponseBody
    public CommonResult addGood(@RequestBody AmsGoodRecommend goodRecommend){
        Integer record = goodRecommendService.add(goodRecommend);
        return CommonResult.success(record);
    }
    @ApiOperation("优选推荐修改")
    @RequestMapping(value = "/editGood",method = RequestMethod.GET)
    @ResponseBody
    public CommonResult editGood(@RequestParam Integer id,@RequestParam Integer sort){
        AmsGoodRecommend goodRecommend = new AmsGoodRecommend();
        goodRecommend.setId(id);
        goodRecommend.setSort(sort);
        Integer record = goodRecommendService.edit(goodRecommend);
        return CommonResult.success(record);
    }
    @ApiOperation("优选推荐列表")
    @RequestMapping(value = "/goodList",method = RequestMethod.GET)
    @ResponseBody
    public CommonResult goodList(){
        List<GoodVo> record = goodRecommendService.list();
        return CommonResult.success(record);
    }
    @ApiOperation("删除优选")
    @RequestMapping(value = "/deleteGood/{id}",method = RequestMethod.DELETE)
    @ResponseBody
    public CommonResult deleteGood(@PathVariable Integer id ){
        Integer record = goodRecommendService.delete(id);
        return CommonResult.success(record);
    }

    // 品牌

    @ApiOperation("品牌推荐添加")
    @RequestMapping(value = "/addBrand",method = RequestMethod.POST)
    @ResponseBody
    public CommonResult addBrand(@RequestBody AmsBrandRecommend brandRecommend){
        Integer record = brandRecommendService.add(brandRecommend);
        return CommonResult.success(record);
    }
    @ApiOperation("品牌推荐修改")
    @RequestMapping(value = "/editBrand",method = RequestMethod.GET)
    @ResponseBody
    public CommonResult editBrand(@RequestParam Integer id,@RequestParam Integer sort){
        AmsBrandRecommend brandRecommend = new AmsBrandRecommend();
        brandRecommend.setId(id);
        brandRecommend.setSort(sort);
        Integer record = brandRecommendService.edit(brandRecommend);
        return CommonResult.success(record);
    }
    @ApiOperation("品牌推荐列表首页")
    @RequestMapping(value = "/brandListHome",method = RequestMethod.GET)
    @ResponseBody
    public CommonResult brandListHome(){
        List<AmsBrandRecommend> record = brandRecommendService.listHome();
        return CommonResult.success(record);
    }
    @ApiOperation("删除品牌")
    @RequestMapping(value = "/deleteBrand/{id}",method = RequestMethod.DELETE)
    @ResponseBody
    public CommonResult deleteBrand(@PathVariable Integer id ){
        Integer record = brandRecommendService.delete(id);
        return CommonResult.success(record);
    }
}
