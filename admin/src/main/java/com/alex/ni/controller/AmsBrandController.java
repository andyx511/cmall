package com.alex.ni.controller;

import com.alex.ni.api.CommonPage;
import com.alex.ni.api.CommonResult;
import com.alex.ni.dto.AmsBrandQueryParam;
import com.alex.ni.model.AmsBrand;
import com.alex.ni.service.AmsBrandService;
import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * @author NiDingbo
 * @date 2019/9/19
 * @des
 */
@Controller
@Api(tags = "AmsBrandController", description = "品牌")
@RequestMapping("/brand")
public class AmsBrandController {
    @Autowired
    private AmsBrandService amsBrandService;

    @RequestMapping(value = "list" ,method = RequestMethod.GET)
    @ResponseBody
    public CommonResult<CommonPage<AmsBrand>> list(AmsBrandQueryParam amsBrandQueryParam,
                             @RequestParam(value = "pageNum" ,defaultValue = "1") Integer pageNum,
                             @RequestParam(value = "pageSize",defaultValue = "10") Integer pageSize){
        List<AmsBrand> list = amsBrandService.list(amsBrandQueryParam,pageNum,pageSize);
        return CommonResult.success(CommonPage.restPage(list));
    }

}
