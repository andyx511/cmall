package com.alex.ni.controller;

import com.alex.ni.api.CommonPage;
import com.alex.ni.api.CommonResult;
import com.alex.ni.dto.AmsProductQueryParam;
import com.alex.ni.model.AmsProduct;
import com.alex.ni.service.AmsProductService;
import com.alex.ni.util.ExcelUtiles;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.math.BigDecimal;
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
    @ApiOperation("商品列表游客")
    @RequestMapping(value = "/listuser" ,method = RequestMethod.GET)
    @ResponseBody
    public CommonResult<CommonPage<AmsProduct>> listuser(AmsProductQueryParam amsProductQueryParam,
                                                     @RequestParam(value = "pageNum" ,defaultValue = "1") Integer pageNum,
                                                     @RequestParam(value = "pageSize",defaultValue = "10") Integer pageSize){
        List<AmsProduct> list = amsProductService.listuser(amsProductQueryParam, pageNum, pageSize);
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
    @RequestMapping(value = "/detail/{id}",method = RequestMethod.GET)
    @ResponseBody
    public CommonResult detail(@PathVariable("id") Integer id ){
        AmsProduct record = amsProductService.detail(id);
        return CommonResult.success(record);
    }

    @ApiOperation("批量删除")
    @RequestMapping(value = "/delete",method = RequestMethod.POST)
    @ResponseBody
    public CommonResult delete(@RequestBody List<Integer> ids){
        Integer count = amsProductService.delete(ids);
        return CommonResult.success(count);
    }

    @ApiOperation("修改是否新品")
    @RequestMapping(value = "/updateIsNew",method = RequestMethod.POST)
    @ResponseBody
    public CommonResult updateIsNew(@RequestParam("id")Integer id, @RequestParam("isNew")Integer isNew){
        AmsProduct amsProduct = new AmsProduct();
        amsProduct.setId(id);
        amsProduct.setIsNew(isNew);
        Integer record = amsProductService.update(amsProduct);
        return CommonResult.success(record);
    }
    @ApiOperation("修改是否新品")
    @RequestMapping(value = "/updateIsPublic",method = RequestMethod.POST)
    @ResponseBody
    public CommonResult updateIsPublic(@RequestParam("id")Integer id, @RequestParam("isPublic")Integer isPublic){
        AmsProduct amsProduct = new AmsProduct();
        amsProduct.setId(id);
        amsProduct.setIsPublic(isPublic);
        Integer record = amsProductService.update(amsProduct);
        return CommonResult.success(record);
    }
    @ApiOperation("更新库存")
    @RequestMapping(value = "/updateStock",method = RequestMethod.POST)
    @ResponseBody
    public CommonResult updateStock(@RequestParam("id")Integer id, @RequestParam("num")Integer num){
        Integer record = amsProductService.addStock(id,num);
        return CommonResult.success(record);
    }
    @ApiOperation("更新审核状态")
    @RequestMapping(value = "/updateStatus",method = RequestMethod.POST)
    @ResponseBody
    public CommonResult updateStatus(@RequestParam("id")Integer id, @RequestParam("status")Integer status){
        AmsProduct amsProduct = new AmsProduct();
        amsProduct.setId(id);
        amsProduct.setStatus(status);
        Integer record = amsProductService.update(amsProduct);
        return CommonResult.success(record);
    }

    @ApiOperation("更新商品信息状态")
    @RequestMapping(value = "/update",method = RequestMethod.POST)
    @ResponseBody
    public CommonResult updateProduct(@RequestBody AmsProduct amsProduct){
        if (amsProduct.getIsDiscount()==0){
            amsProduct.setDiscountPrice(BigDecimal.ZERO);
        }
        amsProduct.setStatus(3);
        Integer record = amsProductService.update(amsProduct);
        return CommonResult.success(record);
    }

    @ApiOperation("商品数据导出")
    @RequestMapping(value = "/export",method = RequestMethod.GET,produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    @ResponseBody
    public CommonResult export(HttpServletResponse response){
        AmsProductQueryParam amsProductQueryParam = new AmsProductQueryParam();
        List<AmsProduct> list = amsProductService.list(amsProductQueryParam, 1, 1000);
        ExcelUtiles.exportExcel(list, "商品数据表", "商品数据表", AmsProduct.class, "商品数据表.xls", response);
        return CommonResult.success();
    }


//
//    @ApiOperation("导入ES")
//    @RequestMapping(value = "/importEs",method = RequestMethod.GET)
//    @ResponseBody
//    public CommonResult importEs(){
//        Integer record = esService.importAll();
//        return CommonResult.success(record);
//    }

}
