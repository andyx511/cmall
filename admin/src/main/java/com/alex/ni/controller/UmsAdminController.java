package com.alex.ni.controller;

import com.alex.ni.api.CommonPage;
import com.alex.ni.api.CommonResult;

import com.alex.ni.bo.AdminUserDetails;
import com.alex.ni.dto.UmsAdminLoginParam;
import com.alex.ni.dto.UmsAdminParam;
import com.alex.ni.model.UmsAdmin;
import com.alex.ni.service.UmsAdminService;
import com.alex.ni.util.RandomValidateCodeUtil;
import com.alex.ni.util.VerificationCodeUtils;
import com.alex.ni.utils.StringUtil;
import com.aliyuncs.exceptions.ClientException;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import net.sf.json.JSONObject;
import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.security.Principal;
import java.util.HashMap;
import java.util.List;
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

    @ApiOperation(
            value = "发送短信验证码",
            notes =
                    "{\n" + "    \"phone\":\"15224563576\",\n" + "    \"type\":\"register or reset\"\n" + "}")
    @RequestMapping(value = "/getVCode", method = RequestMethod.POST)
    @ResponseBody
    public CommonResult getVCode(@RequestBody JSONObject jsonObject) throws ClientException {
//        boolean flag = verificationCodeUtils.sendrVerificationCode("18257198894");
//        String str = verificationCodeUtils.getVerificationCodeByType("18257198894");
        //从session中获取验证码
        if (!jsonObject.containsKey("phone")|| StringUtil.isEmpty(jsonObject.getString("phone"))){
            return CommonResult.failed("缺失手机号");
        }
        String phone = jsonObject.getString("phone");
        String type = jsonObject.getString("type");
        // 校验手机号是否符合格式
        boolean checkResult = StringUtil.checkPhoneNumber(phone.trim());
        if (!checkResult) {
            return CommonResult.failed("手机号格式错误");
        }
        UmsAdmin umsAdmin = adminService.getAdminByUsername(phone);

        if ("register".equalsIgnoreCase(jsonObject.getString("type"))){
            if(umsAdmin != null){
                return CommonResult.failed("该手机号已被注册");
            }
            boolean flag = verificationCodeUtils.sendrVerificationCode("18257198894");
        }else if("reset".equalsIgnoreCase(jsonObject.getString("type"))){
            if(umsAdmin == null){
                return CommonResult.failed("该手机号未被注册");
            }
            boolean flag = verificationCodeUtils.sendrVerificationCode("18257198894");
        }
        return CommonResult.success();
    }

    @ApiOperation(value = "登录以后返回token")
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    @ResponseBody
    public CommonResult login(@RequestBody UmsAdminLoginParam umsAdminLoginParam,HttpServletRequest request) {
        HttpSession session = request.getSession();
//        String random = (String) session.getAttribute(RandomValidateCodeUtil.RANDOMCODEKEY);
//        String tcode = umsAdminLoginParam.getTCode();
        String token = adminService.login(umsAdminLoginParam.getUsername(), umsAdminLoginParam.getPassword());
        if (token == null) {
            return CommonResult.validateFailed("用户名或密码错误");
        }
        UmsAdmin admin = adminService.getAdminByUsername(umsAdminLoginParam.getUsername());
        if (admin.getStatus()==0){
            return CommonResult.failed("该用户已被冻结，请及时联系管理员");
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
    public CommonResult getAdminInfo(Principal principal) throws  Exception{
        String username = principal.getName();
        UmsAdmin umsAdmin = adminService.getAdminByUsername(username);
        Map<String, Object> data = new HashMap<>();
        data.put("username", umsAdmin.getUsername());
        data.put("name", umsAdmin.getNickName());
        List<String> list = adminService.getUserRoles(umsAdmin.getId());
        data.put("roles",list);
        data.put("email", umsAdmin.getEmail());
        data.put("avatar", umsAdmin.getIcon());
        return CommonResult.success(data);
    }

    @ApiOperation(value = "登出功能")
    @RequestMapping(value = "/logout", method = RequestMethod.POST)
    @ResponseBody
    public CommonResult logout() {
        return CommonResult.success(null);
    }

    @ApiOperation(value = "用户注册")
    @RequestMapping(value = "/register", method = RequestMethod.POST)
    @ResponseBody
    public CommonResult<UmsAdmin> register(@RequestBody UmsAdminParam umsAdminParam) {

        if (!umsAdminParam.getPassword().equalsIgnoreCase(umsAdminParam.getRepassword())){
            return CommonResult.failed("密码不一致");
        }
        //验证码校验
        String resCode = verificationCodeUtils.getVerificationCodeByType(umsAdminParam.getUsername());
        if (!resCode.equalsIgnoreCase(umsAdminParam.getVcode()) ){
            return CommonResult.failed("验证码错误");
        }
        UmsAdmin umsAdmin = adminService.register(umsAdminParam);
        if (umsAdmin == null) {
            return CommonResult.failed();
        }
        return CommonResult.success(umsAdmin);
    }

    @ApiOperation("密码重置")
    @RequestMapping(value = "reset",method = RequestMethod.POST)
    @ResponseBody
    public CommonResult reset(@RequestBody UmsAdminParam umsAdminParam) {
        if (!umsAdminParam.getPassword().equalsIgnoreCase(umsAdminParam.getRepassword())){
            return CommonResult.failed("密码不一致");
        }
        //验证码校验
        String resCode = verificationCodeUtils.getVerificationCodeByType(umsAdminParam.getUsername());
        if (!resCode.equalsIgnoreCase(umsAdminParam.getVcode()) ){
            return CommonResult.failed("验证码错误");
        }
        Integer record = adminService.reset(umsAdminParam);
        return CommonResult.success(record);
    }
    @ApiOperation("用户列表")
    @RequestMapping(value = "list",method = RequestMethod.GET)
    @ResponseBody
    public CommonResult list(
            @RequestParam(required = false) Integer id,
            @RequestParam(required = false) String name,
            @RequestParam(required = false) String nickname,
            @RequestParam(required = false) Integer pageNum,
            @RequestParam(required = false) Integer pageSize
    ) {
        List<UmsAdmin> list = adminService.list(id, name, nickname, pageNum, pageSize);
        return CommonResult.success(CommonPage.restPage(list));
    }
    @ApiOperation("用户禁用")
    @RequestMapping(value = "jin",method = RequestMethod.GET)
    @ResponseBody
    public CommonResult jin(
            @RequestParam Integer id
    ) {
        Integer record = adminService.jin(id);
        return CommonResult.success(record);
    }
    @ApiOperation("用户禁用")
    @RequestMapping(value = "qi",method = RequestMethod.GET)
    @ResponseBody
    public CommonResult qi(@RequestParam Integer id) {
        Integer record = adminService.qi(id);
        return CommonResult.success(record);
    }
    @ApiOperation("添加用户")
    @RequestMapping(value = "add",method = RequestMethod.POST)
    @ResponseBody
    public CommonResult add(@RequestBody UmsAdmin admin) {
        Integer a = adminService.count(admin.getUsername());
        if(a!=0){
            return CommonResult.failed("账号已存在");
        }
        Integer record = adminService.add(admin);
        return CommonResult.success(record);
    }
}
