package com.alex.ni.dto;

import io.swagger.annotations.ApiModelProperty;
import io.swagger.annotations.ApiOperation;
import lombok.Data;
import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

/**
 * @author NiDingbo
 * @date 2019/10/5 13:50
 */
@Data
public class UmsAdminParam {
    @ApiModelProperty(value = "用户名", required = true)
    @NotEmpty(message = "用户名不能为空")
    private String username;
    @ApiModelProperty(value = "密码", required = true)
    @NotEmpty(message = "密码不能为空")
    private String password;
    @ApiModelProperty(value = "短信验证码",required = true)
    @NotEmpty(message = "密码不能为空")
    private String vcode;
    @ApiModelProperty(value = "昵称",required = true)
    private String nickname;
    @ApiModelProperty(value = "确认密码",required = true)
    private String repassword;
 /*   @ApiModelProperty(value = "用户头像")
    private String icon;*/
/*    @ApiModelProperty(value = "邮箱")
    @Email(message = "邮箱格式不合法")
    private String email;
    @ApiModelProperty(value = "用户昵称")
    private String nickName;
    @ApiModelProperty(value = "备注")
    private String note;*/
}
