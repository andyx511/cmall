package com.alex.ni.dao;

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
}
