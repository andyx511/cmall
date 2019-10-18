package com.alex.ni.controller;

import com.alex.ni.api.CommonPage;
import com.alex.ni.api.CommonResult;
import com.alex.ni.bo.AdminUserDetails;
import com.alex.ni.dto.AmsPermissionList;
import com.alex.ni.dto.MemberInfo;
import com.alex.ni.model.AmsMember;
import com.alex.ni.model.UmsAdmin;
import com.alex.ni.service.AmsMemberService;
import com.alex.ni.service.UmsAdminService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @author NiDingbo
 * @date 2019/10/8 20:45
 */
@Controller
@Api(tags = "会员", description = "会员")
@RequestMapping("/member")
public class AmsMemberController {
    @Autowired
    private UmsAdminService adminService;
    @Autowired
    private AmsMemberService memberService;

    @ApiOperation("获取会员信息")
    @RequestMapping(value = "/info", method = RequestMethod.GET)
    @ResponseBody
    public CommonResult info() {
        AdminUserDetails details = adminService.getCurrentUser();
        UmsAdmin admin = details.getUmsAdmin();
        MemberInfo info = memberService.getInfo(admin.getId().intValue());
        return CommonResult.success(info);
    }
    @ApiOperation("修改会员信息")
    @RequestMapping(value = "/edit", method = RequestMethod.POST)
    @ResponseBody
    public CommonResult edit(@RequestBody MemberInfo info) {
        UmsAdmin admin = new UmsAdmin();
        admin.setId(info.getUserId().longValue());
        admin.setUsername(info.getUsername());
        admin.setIcon(info.getIcon());
        adminService.edit(admin);
        AmsMember member = new AmsMember();
        BeanUtils.copyProperties(info,member);
        memberService.editInfo(member);
        return CommonResult.success();
    }
    @ApiOperation("会员信息列表")
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    @ResponseBody
    public CommonResult list(@RequestParam(required = false) Integer memberId,
                             @RequestParam(required = false) String memberName,
                             @RequestParam Integer pageNum,
                             @RequestParam Integer pageSize
                             ) {
        List<AmsMember> list =  memberService.list(memberId,memberName,pageNum,pageSize);
        return CommonResult.success(CommonPage.restPage(list));
    }
    @ApiOperation("冻结会员")
    @RequestMapping(value = "/dong", method = RequestMethod.GET)
    @ResponseBody
    public CommonResult dong(@RequestParam Integer memberId) {
        Integer record =  memberService.dong(memberId);
        return CommonResult.success(record);
    }
    @ApiOperation("冻结会员")
    @RequestMapping(value = "/jie", method = RequestMethod.GET)
    @ResponseBody
    public CommonResult jie(@RequestParam Integer memberId) {
        Integer record =  memberService.jie(memberId);
        return CommonResult.success(record);
    }
}
