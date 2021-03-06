package com.alex.ni.service;

import com.alex.ni.dto.AmsOrderParam;
import com.alex.ni.dto.AmsOrderReturnParam;
import com.alex.ni.dto.OrderInfo;
import com.alex.ni.model.AmsAddress;
import com.alex.ni.model.AmsOrder;
import com.alex.ni.model.AmsOrderReturn;
import com.github.pagehelper.PageInfo;

import java.util.List;

/**
 * @author NiDingbo
 * @date 2019/10/9
 * @des
 */
public interface AmsOrderService {

    /**
    * 生成订单
    */
    Integer generateOrder(List<Integer> ids);

    /**
    * 添加订单的收货地址
    */
    Integer orderAddress(Integer addressId ,Integer orderId);

    /**
    * 订单状态更改
    */
    Integer orderStatus(Integer status,Integer orderId);

    /**
     * 订单发货
     * @return
     */
    Integer orderDelivery(Integer orderId);
    /**
    * 订单列表（用户）
    */
    List<OrderInfo> list(Integer userId);
    /**
    * 订单列表管理
    */
    PageInfo<OrderInfo> list(AmsOrderParam param, Integer pageNum, Integer pageSize);
    /**
    * 订单详情
    */
    OrderInfo detail (Integer id );
    /**
    * 对指定订单进行支付
    */
    Integer payForOrder(Integer id,Boolean isUsePoint);

    /**
     * @param orderReturn
     * @return
     */
    Integer applyReturn( AmsOrderReturn orderReturn);

    /**
     * @param param
     * @param pageNum
     * @param pageSize
     * @return
     */
    List<AmsOrderReturn> returnList(AmsOrderReturnParam param,Integer pageNum,Integer pageSize);

    /**
     * 退货订单详情
     * @param id 订单id
     * @return
     */
    AmsOrderReturn returnDetail(Integer id);

    /**
     * 更改退货状态
     * @param orderReturn
     * @return
     */
    Integer changeReturnStatus(AmsOrderReturn orderReturn);

}
