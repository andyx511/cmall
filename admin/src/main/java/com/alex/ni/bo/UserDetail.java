package com.alex.ni.bo;

import com.alex.ni.model.AmsUser;
import com.alex.ni.model.UmsAdmin;
import com.alex.ni.model.UmsPermission;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.Collection;
import java.util.List;
import java.util.stream.Collectors;

/**
 * @author NiDingbo
 * @date 2019/10/5 11:05
 */

public class UserDetail implements UserDetails {
    private AmsUser amsUser;
    private List<UmsPermission> permissionList;
    public UserDetail(AmsUser amsUser,List<UmsPermission> permissionList) {
        this.amsUser = amsUser;
        this.permissionList = permissionList;
    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        //返回当前用户的权限
        return permissionList.stream()
                .filter(permission -> permission.getValue()!=null)
                .map(permission ->new SimpleGrantedAuthority(permission.getValue()))
                .collect(Collectors.toList());
    }

    @Override
    public String getPassword() {
        return amsUser.getPassword();
    }

    @Override
    public String getUsername() {
        return amsUser.getName();
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return amsUser.getIsDelete().equals(0);
    }

    public AmsUser getAmsUser(){return amsUser;}

    public String getPhone() {return  amsUser.getPhone();}
}
