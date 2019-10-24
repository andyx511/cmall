package com.alex.ni.dao;

import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * @author NiDingbo
 * @date 2019/10/14
 * @des
 */
public interface AmsReportDao {

    /**
     * 用户访问记录与总访问记录
     * @return List<Map>
     */
    List<Map> systemVisited(@Param("userId") Integer userId);


    /**
     * 产品种类分布情况
     * @return
     */
    List<Map> producrtKind();

    /**
     * 产品品牌分布情况
     * @return
     */
    List<Map> productBrand();

    /**
     * 订单报表
     * 数量及金额
     * @return
     */
    List<Map> order();

    Integer orderPrcie();

}
