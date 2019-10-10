package com.alex.ni.dao;

import com.alex.ni.dto.AmsOrderParam;
import com.alex.ni.dto.OrderInfo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author NiDingbo
 * @date 2019/10/9
 * @des
 */
public interface AmsOrderDao {

    List<OrderInfo> list(@Param("userId") Integer userId);

    List<OrderInfo> listForAdmin(@Param("param") AmsOrderParam param, @Param("pageNum") Integer pageNum, @Param("pageSize") Integer pageSize);

    Integer countSum(@Param("param") AmsOrderParam param);

    OrderInfo detail(@Param("id") Integer id);

}
