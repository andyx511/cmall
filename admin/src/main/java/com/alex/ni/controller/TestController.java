package com.alex.ni.controller;

import com.alex.ni.api.CommonResult;
import com.alex.ni.mapper.AmsTestMapper;
import com.alex.ni.model.AmsTest;
import com.alex.ni.util.RandomValidateCodeUtil;
import com.aliyuncs.exceptions.ClientException;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

/**
 * @author NiDingbo
 * @date 2019/9/18
 * @des
 */
@Controller
@Api(tags = "测试", description = "测试")
@RequestMapping("/test")
public class TestController {

    @Resource
    private RedisTemplate<String,String> redisTemplate;

    @Autowired
    private AmsTestMapper mapper;

    @ApiOperation("test")
    @RequestMapping(value = "/test", method = RequestMethod.GET)
    @ResponseBody
    public CommonResult test() {
        AmsTest test = new AmsTest();
        for (int i = 0; i<10000; i++){
            test.setName(i+"ndb");
            mapper.insertSelective(test);
        }
        return CommonResult.success();
    }
}
