package com.alex.ni.service.impl;

import com.alex.ni.bo.AdminUserDetails;
import com.alex.ni.bo.UserDetail;
import com.alex.ni.dao.AmsMemberDao;
import com.alex.ni.dao.AmsOrderDao;
import com.alex.ni.dao.AmsProductDao;
import com.alex.ni.dto.AmsOrderParam;
import com.alex.ni.dto.AmsOrderReturnParam;
import com.alex.ni.dto.OrderInfo;
import com.alex.ni.mapper.*;
import com.alex.ni.model.*;
import com.alex.ni.service.AmsOrderService;
import com.alex.ni.service.UmsAdminService;
import com.alex.ni.utils.DateUtils;
import com.alex.ni.utils.StringUtil;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.sun.org.apache.xpath.internal.operations.Bool;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.PathVariable;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

import static com.alex.ni.utils.DateUtils.date_sdf;
import static com.alex.ni.utils.DateUtils.datetimeFormat;

/**
 * @author NiDingbo
 * @date 2019/10/9
 * @des
 */
@Service
public class AmsOrderServiceImpl implements AmsOrderService {

    @Autowired
    private AmsOrderMapper orderMapper;
    @Autowired
    private AmsCartMapper cartMapper;
    @Autowired
    private UmsAdminService adminService;
    @Autowired
    private AmsProductMapper productMapper;
    @Autowired
    private AmsOrderItemMapper itemMapper;
    @Autowired
    private AmsMemberMapper memberMapper;
    @Autowired
    private AmsOrderDao orderDao;
    @Autowired
    private AmsProductDao productDao;
    @Autowired
    private AmsAddressMapper addressMapper;
    @Autowired
    private AmsOrderReturnMapper returnMapper;
    @Autowired
    private AmsMemberDao memberDao;

    @Override
    @Transactional
    public Integer generateOrder(List<Integer> ids) {

        Integer totalGrowth = 0;
        Integer totalPoint = 0;
        BigDecimal totalPrice = BigDecimal.ZERO;
        //根据购物车的ids生成订单内的货物
        AmsCartExample example = new AmsCartExample();
        example.createCriteria().andIdIn(ids);
        List<AmsCart> carts = cartMapper.selectByExample(example);

        //计算该订单能得到的成长值及总价
        for (AmsCart cart :carts){
            int pid = cart.getProductId();
            int num = cart.getNum();
            AmsProduct product = productMapper.selectByPrimaryKey(pid);
            if (product.getStock()<num){
                return -1;
            }
            totalGrowth  += num * product.getGiftGrowth();
            totalPoint += num * product.getGiftPoint();
            totalPrice = totalPrice.add(product.getPrice().multiply(new BigDecimal(num)));
            //减少库存增加购买数
            Integer record = productDao.updateStock(pid, -num);

        }

        //生成订单
        AdminUserDetails detail = adminService.getCurrentUser();
        UmsAdmin admin = detail.getUmsAdmin();
        AmsOrder order = new AmsOrder();
        order.setCreateTime(new Date());
        order.setUserId(admin.getId().intValue());
        order.setGrowth(totalGrowth);
        order.setPoint(totalPoint);
        order.setTotalPrice(totalPrice);
        orderMapper.insertSelective(order);

        //生成订单详情
        Integer orderId = order.getId();
        for (AmsCart cart: carts){
            AmsOrderItem item = new AmsOrderItem();
            item.setOrderId(orderId);
            item.setNum(cart.getNum());
            item.setProductId(cart.getProductId());
            itemMapper.insertSelective(item);
        }

        //删除购物车内商品数据
        Integer record = cartMapper.deleteByExample(example);

        return order.getId();
    }

    @Override
    public Integer orderAddress(Integer addressid, Integer orderId) {
        AmsAddress address = addressMapper.selectByPrimaryKey(addressid);
        AmsOrderExample example = new AmsOrderExample();
        example.createCriteria().andIdEqualTo(orderId);
        AmsOrder order = new AmsOrder();
        order.setReceiverProvince(address.getProvince());
        order.setReceiverCity(address.getCity());
        order.setReceiverRegion(address.getRegion());
        order.setReceiverName(address.getReceiverName());
        order.setReceiverPhone(address.getReceiverPhone());
        order.setReceiverDetailAddress(address.getDetailAddress());
        Integer record = orderMapper.updateByExampleSelective(order, example);
        return record;
    }

    @Override
    public Integer orderStatus(Integer status, Integer orderId) {
        AmsOrderExample example = new AmsOrderExample();
        example.createCriteria().andIdEqualTo(orderId);
        AmsOrder order = new AmsOrder();
        order.setStatus(status);
        Integer record = orderMapper.updateByExampleSelective(order, example);
        return record;
    }

    @Override
    public Integer orderDelivery(Integer orderId) {
        AmsOrderExample example = new AmsOrderExample();
        example.createCriteria().andIdEqualTo(orderId);
        AmsOrder order = new AmsOrder();
        order.setStatus(2);
        order.setDeliveryCompany("天天开心快递公司");
        order.setDeliveryTime(new Date());
        Integer record = orderMapper.updateByExampleSelective(order, example);
        return record;
    }

    @Override
    public List<OrderInfo> list(Integer userId) {
        List<OrderInfo> list = orderDao.list(userId);
        return list;
    }

    @Override
    public PageInfo<OrderInfo> list(AmsOrderParam param,Integer pageNum,Integer pageSize) {
        PageInfo<OrderInfo> pageInfo = new PageInfo<>();
        List<OrderInfo> list = orderDao.listForAdmin(param,(pageNum-1)*pageSize,pageSize);
        Integer total = orderDao.countSum(param);
        pageInfo.setPageSize(pageSize);
        pageInfo.setPageNum(pageNum);
        pageInfo.setTotal(total);
        pageInfo.setList(list);
        return pageInfo;
    }

    @Override
    public OrderInfo detail(Integer id) {
        OrderInfo order = orderDao.detail(id);
        return order;
    }

    @Override
    @Transactional
    public Integer payForOrder(Integer id, Boolean isUsePoint) {
        AdminUserDetails details = adminService.getCurrentUser();
        UmsAdmin admin = details.getUmsAdmin();
        //查询会员信息
        AmsMemberExample example = new AmsMemberExample();
        example.createCriteria().andUserIdEqualTo(admin.getId().intValue());
        List<AmsMember> members = memberMapper.selectByExample(example);
        //查询订单信息
        AmsOrder order = orderMapper.selectByPrimaryKey(id);

            BigDecimal discount = BigDecimal.ONE;
        // members.get(0)
        if (members.get(0).getGrowth() >= 10000 && members.get(0).getGrowth()<50000){
            discount=new BigDecimal(0.9);
        }
        if (members.get(0).getGrowth() >= 50000 && members.get(0).getGrowth()<100000){
            discount=new BigDecimal(0.8);
        }
        if (members.get(0).getGrowth() >= 100000 ){
            discount=new BigDecimal(0.7);
        }
        order.setTotalPrice(discount.multiply(order.getTotalPrice()));
        if (isUsePoint){
            order.setTotalPrice(order.getTotalPrice().subtract(new BigDecimal(100)));
            memberDao.updateP(0,-1000,order.getUserId());
        }
        //会员余额小于订单总价
        if(members.get(0).getMoney().compareTo(order.getTotalPrice()) == -1){
            return 0;
        }
        //修改余额及订单状态
        BigDecimal newMoney = members.get(0).getMoney().subtract(order.getTotalPrice());
        AmsMember member = new AmsMember();
        member.setMoney(newMoney);
        Integer record = memberMapper.updateByExampleSelective(member,example);
        memberDao.updateP(order.getGrowth(),order.getPoint(),order.getUserId());

        order.setStatus(1);
        order.setPayType("网页支付");
        Integer re = orderMapper.updateByPrimaryKeySelective(order);
        return 1;
    }

    @Override
    public Integer applyReturn( AmsOrderReturn orderReturn) {
        Integer record = returnMapper.insertSelective(orderReturn);
        return record;
    }

    @Override
    public List<AmsOrderReturn> returnList(AmsOrderReturnParam param, Integer pageNum, Integer pageSize) {
        PageHelper.startPage(pageNum, pageSize);
        AmsOrderReturnExample example = new AmsOrderReturnExample();
        AmsOrderReturnExample.Criteria criteria = example.createCriteria();
        if (!StringUtils.isEmpty(param.getHandleMan())){
            criteria.andHandleManLike("%" + param.getHandleMan() + "%");
        }
        if (!StringUtils.isEmpty(param.getStatus())){
            criteria.andApplyStatusEqualTo(param.getStatus());
        }
        if (!StringUtils.isEmpty(param.getStartDt())){
            criteria.andApplyTimeGreaterThanOrEqualTo(DateUtils.str2Date(param.getStartDt(),date_sdf));
        }
        if (!StringUtils.isEmpty(param.getEndDt())){
            criteria.andApplyTimeLessThanOrEqualTo(DateUtils.str2Date(param.getEndDt(),date_sdf));
        }
        if (param.getId() != null){
            criteria.andIdEqualTo(param.getId());
        }
        List<AmsOrderReturn> list = returnMapper.selectByExample(example);
        return list;
    }

    @Override
    public AmsOrderReturn returnDetail(Integer id) {
        AmsOrderReturnExample example = new AmsOrderReturnExample();
        example.createCriteria().andOrderIdEqualTo(id);
        List<AmsOrderReturn> list = returnMapper.selectByExample(example);
        return list.get(0);
    }

    @Override
    public Integer changeReturnStatus(AmsOrderReturn orderReturn) {
        Integer record = returnMapper.updateByPrimaryKey(orderReturn);
        return record;
    }

}
