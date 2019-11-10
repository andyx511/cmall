package com.alex.ni.vo;

import com.alex.ni.model.AmsGoodRecommend;
import lombok.Data;

import java.math.BigDecimal;

/**
 * @author NiDingbo
 * @date 2019/11/10 10:28
 */
@Data
public class GoodVo extends AmsGoodRecommend {
    private String goodName;
    private String url;
    private BigDecimal price;
    private Integer salesVolume;
}
