package com.alex.ni.dto;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.Setter;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.stereotype.Service;

/**
 * 用户登录参数
 * Created by NiDingbo
 */
@Data
public class UmsAdminLoginParam {
    @ApiModelProperty(value = "用户名", required = true)
    @NotEmpty(message = "用户名不能为空")
    private String username;
    @ApiModelProperty(value = "密码", required = true)
    @NotEmpty(message = "密码不能为空")
    private String password;

    @ApiModelProperty(value = "验证码", required = true)
    @NotEmpty(message = "验证码不能为空")
    private String tCode;

}
