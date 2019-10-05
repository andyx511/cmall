package com.alex.ni.controller;

import com.alex.ni.api.CommonResult;
import com.alex.ni.dao.UmsAdminRoleRelationDao;
import com.alex.ni.dto.AmsUserLoginParam;
import com.alex.ni.dto.UmsAdminLoginParam;
import com.alex.ni.mapper.AmsUserMapper;
import com.alex.ni.mapper.UmsAdminMapper;
import com.alex.ni.model.AmsUser;
import com.alex.ni.model.UmsAdmin;
import com.alex.ni.service.AmsUserService;
import com.alex.ni.service.impl.UmsAdminServiceImpl;
import com.alex.ni.util.JwtTokenUtil;
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
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.security.Principal;
import java.util.HashMap;
import java.util.Map;

@Controller
@Api(tags = "用户", description = "用户")
@RequestMapping("/user")
public class AmsUserController {

    @Value("${jwt.tokenHeader}")
    private String tokenHeader;
    @Value("${jwt.tokenHead}")
    private String tokenHead;
    @Autowired
    private AmsUserService userService;
    @Autowired
    private VerificationCodeUtils verificationCodeUtils;
    @Resource
    RedisTemplate<String,String> redisTemplate;

    private final static Logger logger = LoggerFactory.getLogger(AmsUserController.class);

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
    public CommonResult getVCode(@RequestParam String phone) throws ClientException {
        boolean flag = verificationCodeUtils.sendrVerificationCode(phone);
        //String str = verificationCodeUtils.getVerificationCodeByType("18257198894");
        //从session中获取验证码
        return CommonResult.success(flag);
    }
    @ApiOperation(value = "登录以后返回token")
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    @ResponseBody
    public CommonResult login(@RequestBody AmsUserLoginParam param, HttpServletRequest request) {
        String token  = userService.login(param.getPhone(),param.getPassword());
        if (token == null) {
            return CommonResult.validateFailed("用户名或密码错误");
        }
        Map<String, String> tokenMap = new HashMap<>();
        tokenMap.put("token", token);
        tokenMap.put("tokenHead", tokenHead);
        return CommonResult.success(tokenMap);
    }
    @ApiOperation(value = "获取当前登录用户信息")
    @RequestMapping(value = "/info", method = RequestMethod.GET)
    @ResponseBody
    public CommonResult info(Principal principal) {
        String username = principal.getName();
        AmsUser amsUser = userService.getUserByPhone(username);
        Map<String, Object> data = new HashMap<>();
        data.put("username", amsUser.getName());
        data.put("roles", new String[]{"admin"});
        data.put("avatar", amsUser.getPhone());
        return CommonResult.success(data);
    }



}
