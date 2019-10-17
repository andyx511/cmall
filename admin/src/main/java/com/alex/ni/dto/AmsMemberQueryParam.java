package com.alex.ni.dto;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * @author NiDingbo
 * @date 2019/10/17 22:36
 */
@Data
public class AmsMemberQueryParam {
    @ApiModelProperty("种类名")
    private String name;
    @ApiModelProperty("状态")
    private Integer status;
}
