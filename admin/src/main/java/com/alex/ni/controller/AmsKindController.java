package com.alex.ni.controller;

import com.alex.ni.api.CommonPage;
import com.alex.ni.api.CommonResult;
import com.alex.ni.dto.AmsBrandQueryParam;
import com.alex.ni.dto.AmsKindQueryParam;
import com.alex.ni.model.AmsBrand;
import com.alex.ni.model.AmsKind;
import com.alex.ni.service.AmsBrandService;
import com.alex.ni.service.AmsKindService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @author NiDingbo
 * @date 2019/9/23
 * @des
 */

@Controller
@Api(tags = "分类", description = "分类")
@RequestMapping("/kind")
public class AmsKindController {

    @Autowired
    private AmsKindService amsKindService;

    @ApiOperation("kind列表")
    @RequestMapping(value = "/list" ,method = RequestMethod.GET)
    @ResponseBody
    public CommonResult<CommonPage<AmsKind>> list(AmsKindQueryParam amsBrandQueryParam,
                                                  @RequestParam(value = "pageNum" ,defaultValue = "1") Integer pageNum,
                                                  @RequestParam(value = "pageSize",defaultValue = "10") Integer pageSize){
        List<AmsKind> list = amsKindService.list(amsBrandQueryParam,pageNum,pageSize);
        return CommonResult.success(CommonPage.restPage(list));
    }

    @ApiOperation("kind添加")
    @RequestMapping(value = "/add", method = RequestMethod.POST)
    @ResponseBody
    public CommonResult add(@RequestBody AmsKind amsKind){
        Integer record = amsKindService.add(amsKind);
        return CommonResult.success(record);
    }

    @ApiOperation("详情")
    @RequestMapping(value = "/detail/{id}", method = RequestMethod.GET)
    @ResponseBody
    public CommonResult detail(@PathVariable Integer id){
        AmsKind amsKind = amsKindService.detail(id);
        return CommonResult.success(amsKind);
    }

    @ApiOperation("update")
    @RequestMapping(value = "/update",method = RequestMethod.POST)
    @ResponseBody
    public CommonResult update(@RequestBody AmsKind amsKind){
        Integer record = amsKindService.update(amsKind);
        return CommonResult.success(record);
    }
    @ApiOperation("update")
    @RequestMapping(value = "/delete",method = RequestMethod.GET)
    @ResponseBody
    public CommonResult delete(@Param("id") Integer id){
        Integer record = amsKindService.delete(id);
        return CommonResult.success(record);
    }
}
