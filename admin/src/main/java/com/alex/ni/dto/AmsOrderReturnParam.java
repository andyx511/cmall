package com.alex.ni.dto;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * @author NiDingbo
 * @date 2019/10/15
 * @des
 */
@Data
public class AmsOrderReturnParam {
    @ApiModelProperty("id")
    private Integer id;
    @ApiModelProperty("处理状态")
    private String status;
    @ApiModelProperty("处理人")
    private String handleMan;
    @ApiModelProperty("开始时间")
    private String startDt;
    @ApiModelProperty("结束时间")
    private String endDt;
}
