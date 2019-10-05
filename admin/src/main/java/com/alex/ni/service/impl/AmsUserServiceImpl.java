package com.alex.ni.service.impl;


import com.alex.ni.dao.UmsAdminRoleRelationDao;
import com.alex.ni.mapper.AmsUserMapper;
import com.alex.ni.mapper.UmsAdminMapper;
import com.alex.ni.model.AmsUser;
import com.alex.ni.model.AmsUserExample;
import com.alex.ni.service.AmsUserService;
import com.alex.ni.util.JwtTokenUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
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

import java.util.List;

@Service
public class AmsUserServiceImpl implements AmsUserService {

    private static final Logger LOGGER = LoggerFactory.getLogger(AmsUserServiceImpl.class);

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
    private AmsUserMapper amsUserMapper;


    @Override
    public AmsUser getUserByPhone(String phone) {
        AmsUserExample example = new AmsUserExample();
        example.createCriteria().andPhoneEqualTo(phone);
        List<AmsUser> userList = amsUserMapper.selectByExample(example);
        if (userList !=null && userList.size() > 0){
            return userList.get(0);
        }
        return null;
    }

    @Override
    public String login(String phone, String password) {

        String token = null;
        try {
            UserDetails userDetails = userDetailsService.loadUserByUsername(phone);
            if (! passwordEncoder.matches(password,userDetails.getPassword())){
                throw new BadCredentialsException("密码不正确");
            }
            UsernamePasswordAuthenticationToken authentication =
                    new UsernamePasswordAuthenticationToken(userDetails, null, userDetails.getAuthorities());
            SecurityContextHolder.getContext().setAuthentication(authentication);
            token = jwtTokenUtil.generateToken(userDetails);
        }catch (AuthenticationException e){
            LOGGER.warn("登录异常:{}", e.getMessage());
        }
        return token;
    }

/*    @Override
    public AmsUser getCurrentUser() {
        SecurityContext ctx = SecurityContextHolder.getContext();
        Authentication auth = ctx.getAuthentication();
        UserDetail userDetail = (UserDetail) auth.getPrincipal();
        return userDetail.getAmsUser();
    }*/
}
