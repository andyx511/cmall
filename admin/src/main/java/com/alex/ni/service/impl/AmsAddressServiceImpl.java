package com.alex.ni.service.impl;

import com.alex.ni.mapper.AmsAddressMapper;
import com.alex.ni.model.AmsAddress;
import com.alex.ni.model.AmsAddressExample;
import com.alex.ni.service.AmsAddressService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author NiDingbo
 * @date 2019/10/9
 * @des
 */
@Service
public class AmsAddressServiceImpl implements AmsAddressService {

    @Autowired
    private AmsAddressMapper addressMapper;

    @Override
    public List<AmsAddress> list(Integer userId) {
        AmsAddressExample example = new AmsAddressExample();
        example.createCriteria().andUserIdEqualTo( userId);
        example.setOrderByClause("is_default DESC");
        List<AmsAddress> list = addressMapper.selectByExample(example);
        return list;
    }

    @Override
    public Integer add(AmsAddress address) {
        // 判断address 是否为默认地址
        if(address.getIsDefault().equalsIgnoreCase("true")){
            AmsAddress amsAddress = new AmsAddress();
            amsAddress.setIsDefault("false");
            AmsAddressExample example = new AmsAddressExample();
            example.createCriteria().andUserIdEqualTo(address.getUserId());
            Integer r = addressMapper.updateByExampleSelective(amsAddress, example);
        }
        Integer record = addressMapper.insertSelective(address);
        return record;
    }

    @Override
    public Integer delete(Integer addressId) {
        Integer record =  addressMapper.deleteByPrimaryKey(addressId);
        return record;
    }

    @Override
    public Integer edit(AmsAddress address) {
        if(address.getIsDefault().equalsIgnoreCase("true")){
            AmsAddress amsAddress = new AmsAddress();
            amsAddress.setIsDefault("false");
            AmsAddressExample example = new AmsAddressExample();
            example.createCriteria().andUserIdEqualTo(address.getUserId());
            Integer r = addressMapper.updateByExampleSelective(amsAddress, example);
        }
        Integer record = addressMapper.updateByPrimaryKeySelective(address);
        return record;
    }

    @Override
    public AmsAddress detail(Integer id) {
        AmsAddress amsAddress = addressMapper.selectByPrimaryKey(id);
        return amsAddress;
    }
}
