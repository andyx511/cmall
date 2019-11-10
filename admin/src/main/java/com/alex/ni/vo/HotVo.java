package com.alex.ni.vo;

import com.alex.ni.model.AmsHotRecommend;
import lombok.Data;

import java.math.BigDecimal;

/**
 * @author NiDingbo
 * @date 2019/11/10 11:09
 */
@Data
public class HotVo extends AmsHotRecommend {
    private String hotName;
    private String url;
    private BigDecimal price;
    private Integer salesVolume;
}
