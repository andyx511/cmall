package com.alex.ni.dto;

import com.alex.ni.model.AmsOrder;
import com.alex.ni.model.AmsOrderItem;
import lombok.Data;

import java.util.List;

/**
 * @author NiDingbo
 * @date 2019/10/9
 * @des
 */
@Data
public class OrderInfo extends AmsOrder {
    List<AmsOrderItem> items;
}
