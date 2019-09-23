package com.alex.ni.dto;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.math.BigDecimal;

/**
 * @author NiDingbo
 * @date 2019/9/21
 * @des
 */
@Data
public class AmsProductQueryParam {
    @ApiModelProperty("种类")
    private String kind;
    @ApiModelProperty("品牌")
    private String brand;
    @ApiModelProperty("是否新品")
    private String isNew;
    @ApiModelProperty("是否上架")
    private String isPublic;
    @ApiModelProperty("名字")
    private String name;
    @ApiModelProperty("最低价格")
    private BigDecimal minPrice;
    @ApiModelProperty("最高价格")
    private BigDecimal maxPrice;
}
