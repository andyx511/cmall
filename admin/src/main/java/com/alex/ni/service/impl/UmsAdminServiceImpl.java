package com.alex.ni.service.impl;

import cn.hutool.core.date.DateTime;
import com.alex.ni.bo.AdminUserDetails;
import com.alex.ni.dao.UmsAdminRoleRelationDao;
import com.alex.ni.dao.UserRoleDao;
import com.alex.ni.dto.UmsAdminParam;
import com.alex.ni.mapper.AmsMemberMapper;
import com.alex.ni.mapper.AmsUserLogMapper;
import com.alex.ni.mapper.AmsUserRoleRelationMapper;
import com.alex.ni.mapper.UmsAdminMapper;
import com.alex.ni.model.*;
import com.alex.ni.service.UmsAdminService;
import com.alex.ni.util.JwtTokenUtil;
import com.github.pagehelper.PageHelper;
import io.swagger.annotations.ApiModelProperty;
import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.List;

/**
 * @author NiDingbo
 * @date 2019/9/17
 * @des
 */
@Service
public class UmsAdminServiceImpl implements UmsAdminService {

    private static final Logger LOGGER = LoggerFactory.getLogger(UmsAdminServiceImpl.class);

    @Autowired
    private UserDetailsService userDetailsService;
    @Autowired
    private PasswordEncoder passwordEncoder;
    @Autowired
    private JwtTokenUtil jwtTokenUtil;
    @Autowired
    private UmsAdminRoleRelationDao adminRoleRelationDao;
    @Autowired
    private UmsAdminMapper adminMapper;
    @Autowired
    private UserRoleDao userRoleDao;
    @Autowired
    private AmsUserRoleRelationMapper userRoleRelationMapper;
    @Autowired
    private AmsMemberMapper memberMapper;
    @Autowired
    private AmsUserLogMapper logMapper;

    @Override
    public UmsAdmin getAdminByUsername(String username) {
        UmsAdminExample example = new UmsAdminExample();
        example.createCriteria().andUsernameEqualTo(username);
        List<UmsAdmin> adminList = adminMapper.selectByExample(example);
        if (adminList != null && adminList.size() > 0) {
            return adminList.get(0);
        }
        return null;
    }

    @Override
    public String login(String username, String password) {
        String token = null;
        //密码需要客户端加密后传递
        try {
            UserDetails userDetails = userDetailsService.loadUserByUsername(username);
            if(!passwordEncoder.matches(password,userDetails.getPassword())){
                throw new BadCredentialsException("密码不正确");
            }
            UsernamePasswordAuthenticationToken authentication =
                    new UsernamePasswordAuthenticationToken(userDetails, null, userDetails.getAuthorities());
            SecurityContextHolder.getContext().setAuthentication(authentication);
            token = jwtTokenUtil.generateToken(userDetails);
            //updateLoginTimeByUsername(username);
            insertLoginLog(username);
        } catch (AuthenticationException e) {
            LOGGER.warn("登录异常:{}", e.getMessage());
        }
        return token;
    }

    @Override
    public List<UmsPermission> getPermissionList(Long adminId) {
        return adminRoleRelationDao.getPermissionList(adminId);
    }

    @Override
    public AdminUserDetails getCurrentUser() {
        SecurityContext ctx = SecurityContextHolder.getContext();
        Authentication auth = ctx.getAuthentication();
        AdminUserDetails userDetail = (AdminUserDetails) auth.getPrincipal();
        return userDetail;
    }

    @Transactional
    @Override
    public UmsAdmin register(UmsAdminParam umsAdminParam) {
        UmsAdmin umsAdmin = new UmsAdmin();
        BeanUtils.copyProperties(umsAdminParam, umsAdmin);
        umsAdmin.setCreateTime(new Date());
        umsAdmin.setIcon("https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif");
        umsAdmin.setStatus(1);
        //查询是否有相同用户名的用户
        UmsAdminExample example = new UmsAdminExample();
        example.createCriteria().andUsernameEqualTo(umsAdmin.getUsername());
        List<UmsAdmin> umsAdminList = adminMapper.selectByExample(example);
        if (umsAdminList.size() > 0) {
            return null;
        }
        //将密码进行加密操作
        String encodePassword = passwordEncoder.encode(umsAdmin.getPassword());
        umsAdmin.setPassword(encodePassword);
        umsAdmin.setNickName(umsAdminParam.getNickname());
        adminMapper.insertSelective(umsAdmin);
        // 创建用户与角色的关系
        AmsUserRoleRelation amsUserRoleRelation = new AmsUserRoleRelation();
        amsUserRoleRelation.setRoleId(3);
        amsUserRoleRelation.setUserId(umsAdmin.getId().intValue());
        userRoleRelationMapper.insertSelective(amsUserRoleRelation);
        //创建用户与会员详细
        AmsMember amsMember = new AmsMember();
        amsMember.setCreateTime(new Date());
        amsMember.setUserId(umsAdmin.getId().intValue());
        amsMember.setNickname(umsAdmin.getNickName());
        memberMapper.insertSelective(amsMember);
        return umsAdmin;
    }

    @Override
    public List<String> getUserRoles(Long userId) {
        List<String> list = userRoleDao.getUserRoles(userId);
        return list;
    }

    @Override
    public Integer reset(UmsAdminParam umsAdminParam) {
        UmsAdmin admin = new UmsAdmin();
        admin.setUsername(umsAdminParam.getUsername());
        String encodePassword = passwordEncoder.encode(umsAdminParam.getPassword());
        admin.setPassword(encodePassword);
        UmsAdminExample example = new UmsAdminExample();
        example.createCriteria().andUsernameEqualTo(umsAdminParam.getUsername());
        Integer record = adminMapper.updateByExampleSelective(admin,example);
        return record;
    }

    @Override
    public Integer edit(UmsAdmin admin) {
        Integer record  = adminMapper.updateByPrimaryKeySelective(admin);
        return record;
    }

    @Override
    public List<UmsAdmin> list(Integer id, String name, String nickname, Integer pageNum, Integer pageSize) {
        PageHelper.startPage(pageNum,pageSize);
        UmsAdminExample example = new UmsAdminExample();
        UmsAdminExample.Criteria criteria= example.createCriteria();
        if (id!=null){
            criteria.andIdEqualTo(id.longValue());
        }
        if (!StringUtils.isEmpty(name)){
            criteria.andUsernameLike("%" + name + "%");
        }
        if (!StringUtils.isEmpty(nickname)){
            criteria.andNickNameLike("%" + nickname + "%");
        }
        criteria.andRoleIdEqualTo(2);
        List<UmsAdmin> list = adminMapper.selectByExample(example);
        return list;
    }

    @Override
    public Integer jin(Integer id) {
        UmsAdmin admin = new UmsAdmin();
        admin.setId(id.longValue());
        admin.setStatus(0);
        Integer record = adminMapper.updateByPrimaryKeySelective(admin);
        return record;
    }

    @Override
    public Integer qi(Integer id) {
        UmsAdmin admin = new UmsAdmin();
        admin.setId(id.longValue());
        admin.setStatus(1);
        Integer record = adminMapper.updateByPrimaryKeySelective(admin);
        return record;
    }

    @Override
    public Integer add(UmsAdmin admin) {
        admin.setCreateTime(new Date());
        String encodePassword = passwordEncoder.encode("123");
        admin.setPassword(encodePassword);
        admin.setIcon("http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/timg.jpg");
        admin.setRoleId(2);
        Integer record = adminMapper.insertSelective(admin);
        return record;
    }

    @Override
    public Integer count(String username) {
        UmsAdminExample example = new UmsAdminExample();
        example.createCriteria().andUsernameEqualTo(username);
        Long record =  adminMapper.countByExample(example);
        return record.intValue();
    }

    /**
     * 添加登录记录
     * @param username 用户名
     */
    private void insertLoginLog(String username) {
        AdminUserDetails details = this.getCurrentUser();
        UmsAdmin admin = details.getUmsAdmin();
        AmsUserLog log = new AmsUserLog();
        log.setUserId(admin.getId().intValue());
        log.setLogTime(new Date());
        ServletRequestAttributes attributes = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
        HttpServletRequest request = attributes.getRequest();
        log.setIp(request.getRemoteAddr());
        logMapper.insertSelective(log);
    }
}
