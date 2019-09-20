package com.alex.ni.controller;

import com.alex.ni.api.CommonResult;
import com.alex.ni.util.RandomValidateCodeUtil;
import com.aliyuncs.exceptions.ClientException;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
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

    @ApiOperation("获取验证码")
    @RequestMapping(value = "/test", method = RequestMethod.POST)
    @ResponseBody
    public CommonResult test() {
        String b = "asda ";
        redisTemplate.opsForValue().set("code", "213454");
        redisTemplate.opsForValue().set("code", "1111");
        String a = redisTemplate.opsForValue().get("code");
        RandomValidateCodeUtil randomValidateCodeUtil = new RandomValidateCodeUtil();
        randomValidateCodeUtil.set();
        a = redisTemplate.opsForValue().get("code");
        return CommonResult.success(a);
    }
}
