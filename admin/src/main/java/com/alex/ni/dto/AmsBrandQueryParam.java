package com.alex.ni.dto;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * @author NiDingbo
 * @date 2019/9/19
 * @des
 */
@Data
public class AmsBrandQueryParam {
    @ApiModelProperty("品牌")
    private String brandName;
}
