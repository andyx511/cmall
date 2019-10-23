package com.alex.ni.service.impl;

import cn.hutool.core.date.DateUtil;
import cn.hutool.db.sql.Order;
import com.alex.ni.dao.AmsReportDao;
import com.alex.ni.mapper.AmsOrderMapper;
import com.alex.ni.mapper.AmsProductMapper;
import com.alex.ni.mapper.AmsUserLogMapper;
import com.alex.ni.mapper.UmsAdminMapper;
import com.alex.ni.model.*;
import com.alex.ni.service.AmsReportService;
import com.alex.ni.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.*;

/**
 * @author NiDingbo
 * @date 2019/10/14
 * @des 报表统计
 */
@Service
public class AmsReportServiceImpl implements AmsReportService {
    @Autowired
    private AmsReportDao reportDao;
    @Autowired
    private UmsAdminMapper adminMapper;
    @Autowired
    private AmsUserLogMapper logMapper;
    @Autowired
    private AmsOrderMapper orderMapper;
    @Autowired
    private AmsProductMapper productMapper;

    @Override
    public List<Map> systemVisied(Integer id) {
        List<Map> list = reportDao.systemVisited(id);
        return list;
    }

    @Override
    public List<Map> orderReport() {
        List<Map>list = reportDao.order();
        return list;
    }

    @Override
    public List<Map> productKind() {
        List<Map> list = reportDao.producrtKind();
        return list;
    }

    @Override
    public List<Map> productBrand() {
        List<Map> list = reportDao.productBrand();
        return list;
    }

    @Override
    public List<Map> order() {
        List<Map> list = reportDao.order();
        return list;
    }

    @Override
    public Map<String, Object> map() {
        Map<String, Object> map = new HashMap<>();
        // 访客
        Date date = DateUtils.today();
        Date tomorrow = DateUtils.tomorrow(date);
        AmsUserLogExample adminExample = new AmsUserLogExample();
        adminExample.createCriteria().andLogTimeBetween(date, tomorrow);
        Long userCount = logMapper.countByExample(adminExample);
        map.put("user", userCount);
        // 订单数
        AmsOrderExample orderExample = new AmsOrderExample();
        orderExample.createCriteria().andCreateTimeBetween(date, tomorrow);
        Long orderCount = orderMapper.countByExample(orderExample);
        map.put("order",orderCount);
        // 订单金额
        List<Map>list = this.order();
        Object totalPrice = list.get(list.size()-1);
        map.put("price", totalPrice);
        // 商品总数
        AmsProductExample productExample = new AmsProductExample();
        productExample.createCriteria().andIsDeleteEqualTo(0);
        Long p = productMapper.countByExample(productExample);
        map.put("product", p);
        return map;
    }
}
