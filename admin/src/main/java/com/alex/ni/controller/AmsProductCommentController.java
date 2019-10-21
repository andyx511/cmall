package com.alex.ni.controller;

import com.alex.ni.api.CommonResult;
import com.alex.ni.model.AmsBrand;
import com.alex.ni.model.AmsProductComment;
import com.alex.ni.service.AmsProductCommentService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @author NiDingbo
 * @date 2019/10/12
 * @des
 */
@Controller
@Api(tags = "商品评价", description = "商品评价")
@RequestMapping("/comment")
public class AmsProductCommentController {

    @Autowired
    private AmsProductCommentService commentService;

    @ApiOperation("添加")
    @RequestMapping(value = "/add",method =RequestMethod.POST)
    @ResponseBody
    public CommonResult add(@RequestBody AmsProductComment comment){
        Integer record = commentService.add(comment);
        return CommonResult.success(record);
    }

    @ApiOperation("删除")
    @RequestMapping(value = "/delete",method =RequestMethod.GET)
    @ResponseBody
    public CommonResult add(@RequestParam Integer id ){
        Integer record = commentService.delete(id);
        return CommonResult.success(record);
    }
    @ApiOperation("列表")
    @RequestMapping(value = "/list",method =RequestMethod.GET)
    @ResponseBody
    public CommonResult list(@RequestParam Integer productId ){
        List<AmsProductComment> list = commentService.list(productId);
        return CommonResult.success(list);
    }


}
