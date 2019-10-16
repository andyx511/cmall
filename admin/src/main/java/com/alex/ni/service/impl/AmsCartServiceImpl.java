package com.alex.ni.service.impl;

import com.alex.ni.dao.AmsCartDao;
import com.alex.ni.mapper.AmsCartMapper;
import com.alex.ni.model.AmsCart;
import com.alex.ni.model.AmsCartExample;
import com.alex.ni.service.AmsCartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.List;

/**
 * @author NiDingbo
 * @date 2019/10/8
 * @des
 */
@Service
public class AmsCartServiceImpl implements AmsCartService {

    @Autowired
    private AmsCartMapper cartMapper;
    @Autowired
    private AmsCartDao cartDao;
    @Override
    public Integer addCart(AmsCart cart) {
        AmsCartExample example = new AmsCartExample();
        example.createCriteria().andMemberIdEqualTo(cart.getMemberId()).andProductIdEqualTo(cart.getProductId());
        List<AmsCart> list = cartMapper.selectByExample(example);
        Integer reocrd;
        if (list.size()==0){
            reocrd  = cartMapper.insertSelective(cart);
        }else {
            reocrd  =cartDao.updateCart(cart.getMemberId(), cart.getProductId(), cart.getNum());
        }
        return reocrd;
    }

    @Override
    public Integer editCart(Integer id, Integer num) {
        AmsCartExample example = new AmsCartExample();
        example.createCriteria().andIdEqualTo(id);
        List<AmsCart> list = cartMapper.selectByExample(example);
        AmsCart cart = new AmsCart();
        cart.setNum(num);
        cart.setTotalPrice(new BigDecimal(num).multiply(list.get(0).getPrice()));
        Integer record = cartMapper.updateByExampleSelective(cart, example);
        return record;
    }

    @Override
    public Integer deleteCart(List<Integer> ids) {
        AmsCartExample example = new AmsCartExample();
        example.createCriteria().andIdIn(ids);
        Integer record = cartMapper.deleteByExample(example);
        return record;
    }

    @Override
    public List<AmsCart> cartList(Integer userId) {
        AmsCartExample example = new AmsCartExample();
        example.createCriteria().andMemberIdEqualTo(userId);
        List<AmsCart> list = cartMapper.selectByExample(example);
        return list;
    }

    @Override
    public Integer count(Integer userId) {
        AmsCartExample example = new AmsCartExample();
        example.createCriteria().andMemberIdEqualTo(userId);
        Long count = cartMapper.countByExample(example);
        Integer a= count.intValue();
        return a;
    }
}
