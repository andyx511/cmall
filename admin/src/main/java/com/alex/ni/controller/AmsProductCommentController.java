package com.alex.ni.controller;

import com.alex.ni.api.CommonResult;
import com.alex.ni.service.AmsProductCommentService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

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

}
