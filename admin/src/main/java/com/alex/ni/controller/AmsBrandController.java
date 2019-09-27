package com.alex.ni.controller;

import com.alex.ni.api.CommonPage;
import com.alex.ni.api.CommonResult;
import com.alex.ni.dto.AmsBrandQueryParam;
import com.alex.ni.model.AmsBrand;
import com.alex.ni.service.AmsBrandService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @author NiDingbo
 * @date 2019/9/19
 * @des
 */
@Controller
@Api(tags = "品牌", description = "品牌")
@RequestMapping("/brand")
public class AmsBrandController {
    @Autowired
    private AmsBrandService amsBrandService;

    @ApiOperation("brand列表")
    @RequestMapping(value = "/list" ,method = RequestMethod.GET)
    @ResponseBody
    public CommonResult<CommonPage<AmsBrand>> list(AmsBrandQueryParam amsBrandQueryParam,
                             @RequestParam(value = "pageNum" ,defaultValue = "1") Integer pageNum,
                             @RequestParam(value = "pageSize",defaultValue = "10") Integer pageSize){
        List<AmsBrand> list = amsBrandService.list(amsBrandQueryParam,pageNum,pageSize);
        return CommonResult.success(CommonPage.restPage(list));
    }

    @ApiOperation("brand添加")
    @RequestMapping(value = "/add",method =RequestMethod.POST)
    @ResponseBody
    public CommonResult add(@RequestBody AmsBrand amsBrand ){
        Integer record = amsBrandService.add(amsBrand);
        return CommonResult.success(amsBrand.getId());
    }

    @ApiOperation("单条id详情")
    @RequestMapping(value = "/detail/{id}",method = RequestMethod.GET)
    @ResponseBody
    public CommonResult detail(@PathVariable( "id" ) Integer id){
        AmsBrand amsBrand = amsBrandService.detail(id);
        return CommonResult.success(amsBrand);
    }

    @ApiOperation("更新brand")
    @RequestMapping(value = "/update",method = RequestMethod.POST)
    @ResponseBody
    public CommonResult update(@RequestBody AmsBrand amsBrand){
        Integer record = amsBrandService.update(amsBrand);
        return CommonResult.success(record);
    }

    @ApiOperation("批量删除")
    @RequestMapping(value = "/delete",method = RequestMethod.POST)
    @ResponseBody
    public CommonResult delete(@RequestBody List<Integer> ids){
        Integer count = amsBrandService.delete(ids);
        return CommonResult.success(count);
    }

    @ApiOperation("修改是否新品")
    @RequestMapping(value = "/updateShow",method = RequestMethod.POST)
    @ResponseBody
    public CommonResult updateShow(@Param("id")Integer id,@Param("showStatus")Integer showStatus){
        AmsBrand brand = new AmsBrand();
        brand.setId(id);
        brand.setShowStatus(showStatus);
        Integer record = amsBrandService.update(brand);
        return CommonResult.success(record);
    }
}
