package com.alex.ni.dto;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * @author NiDingbo
 * @date 2019/10/10
 * @des
 */
@Data
public class AmsOrderParam {
    @ApiModelProperty("订单号")
    private Integer id;
    @ApiModelProperty("支付方式")
    private String payType;
    @ApiModelProperty("状态")
    private Integer status;
    @ApiModelProperty("用户id")
    private Integer userId;
}
