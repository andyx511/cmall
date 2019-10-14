package com.alex.ni.service;

import java.util.List;
import java.util.Map;

/**
 * @author NiDingbo
 * @date 2019/10/14
 * @des 报表统计
 */
public interface AmsReportService {
    /**
     * 系统访问量
     * @return List<Map>
     */
    List<Map> systemVisied();

    /**
     * 订单报表
     * @return List<Map>
     *     按日统计
     *     统计订单成交数
     *     金额
     *     面积图
     */
    List<Map> orderReport();

    /**
     * 商品报表种类报表（饼图）
     * @return List<Map>
     */
    List<Map> productKind();

    /**
     * 商品品牌报表
     * @return
     */
    List<Map> productBrand();


}
