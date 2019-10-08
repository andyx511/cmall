package com.alex.ni.dto;

import com.alex.ni.model.AmsMember;
import lombok.Data;

/**
 * @author NiDingbo
 * @date 2019/10/8 20:48
 */
@Data
public class MemberInfo extends AmsMember {
    private String username;
    private String icon;
}
