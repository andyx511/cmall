package com.alex.ni.controller;

import com.alex.ni.api.CommonResult;
import com.alex.ni.dto.UmsAdminLoginParam;
import com.alex.ni.model.UmsAdmin;
import com.alex.ni.service.UmsAdminService;
import com.alex.ni.util.RandomValidateCodeUtil;
import com.alex.ni.util.VerificationCodeUtils;
import com.aliyuncs.exceptions.ClientException;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.security.Principal;
import java.util.HashMap;
import java.util.Map;

/**
 * @author NiDingbo
 * @date 2019/9/17
 * @des
 */
@Controller
@Api(tags = "后台用户管理", description = "后台用户管理")
@RequestMapping("/admin")
public class UmsAdminController {

    @Autowired
    private UmsAdminService adminService;
    @Value("${jwt.tokenHeader}")
    private String tokenHeader;
    @Value("${jwt.tokenHead}")
    private String tokenHead;
    @Autowired
    private VerificationCodeUtils verificationCodeUtils;
    @Resource
    RedisTemplate<String,String> redisTemplate;

    private final static Logger logger = LoggerFactory.getLogger(UmsAdminController.class);

    //生成登录时的图片验证码
    @RequestMapping(value = "/getTCode", method = RequestMethod.GET)
    @ResponseBody
    public void getVerify(HttpServletRequest request, HttpServletResponse response) {
        try {
            response.setContentType("image/jpeg");//设置相应类型,告诉浏览器输出的内容为图片
            response.setHeader("Pragma", "No-cache");//设置响应头信息，告诉浏览器不要缓存此内容
            response.setHeader("Cache-Control", "no-cache");
            response.setDateHeader("Expire", 0);
            RandomValidateCodeUtil randomValidateCode = new RandomValidateCodeUtil();
            randomValidateCode.getRandcode(request, response);//输出验证码图片方法
        } catch (Exception e) {
            logger.error("获取验证码失败>>>>  ", e);
        }
    }

    @ApiOperation("获取验证码")
    @RequestMapping(value = "/getVCode", method = RequestMethod.GET)
    @ResponseBody
    public CommonResult getVCode() throws ClientException {
        boolean flag = verificationCodeUtils.sendrVerificationCode("18257198894");
        String str = verificationCodeUtils.getVerificationCodeByType("18257198894");
        //从session中获取验证码
        return CommonResult.success(flag);
    }

    @ApiOperation(value = "登录以后返回token")
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    @ResponseBody
    public CommonResult login(@RequestBody UmsAdminLoginParam umsAdminLoginParam) {
        String tcode = umsAdminLoginParam.getTCode();
        String token = adminService.login(umsAdminLoginParam.getUsername(), umsAdminLoginParam.getPassword());
        if (token == null) {
            return CommonResult.validateFailed("用户名或密码错误");
        }
        redisTemplate.opsForValue().get("code");
        Map<String, String> tokenMap = new HashMap<>();
        tokenMap.put("token", token);
        tokenMap.put("tokenHead", tokenHead);
        return CommonResult.success(tokenMap);
    }

    @ApiOperation(value = "获取当前登录用户信息")
    @RequestMapping(value = "/info", method = RequestMethod.GET)
    @ResponseBody
    public CommonResult getAdminInfo(Principal principal) {
        String username = principal.getName();
        UmsAdmin umsAdmin = adminService.getAdminByUsername(username);
        Map<String, Object> data = new HashMap<>();
        data.put("username", umsAdmin.getUsername());
        data.put("roles", new String[]{"admin"});
        data.put("avatar", umsAdmin.getIcon());
        return CommonResult.success(data);
    }

    @ApiOperation(value = "登出功能")
    @RequestMapping(value = "/logout", method = RequestMethod.POST)
    @ResponseBody
    public CommonResult logout() {
        return CommonResult.success(null);
    }

}
