package com.alex.ni.vo;

import com.alex.ni.model.AmsNewRecommend;
import lombok.Data;

import java.math.BigDecimal;

/**
 * @author NiDingbo
 * @date 2019/11/10 12:24
 */
@Data
public class NewVo extends AmsNewRecommend {
    private String NewName;
    private String url;
    private BigDecimal price;
    private Integer salesVolume;
}
