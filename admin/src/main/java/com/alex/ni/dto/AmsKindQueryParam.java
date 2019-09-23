package com.alex.ni.dto;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * @author NiDingbo
 * @date 2019/9/23
 * @des
 */
@Data
public class AmsKindQueryParam {
    @ApiModelProperty("种类名")
    private String name;
    @ApiModelProperty("状态")
    private Integer status;
}
