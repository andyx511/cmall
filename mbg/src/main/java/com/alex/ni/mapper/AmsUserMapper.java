package com.alex.ni.mapper;

import com.alex.ni.model.AmsUser;
import com.alex.ni.model.AmsUserExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface AmsUserMapper {
    long countByExample(AmsUserExample example);

    int deleteByExample(AmsUserExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(AmsUser record);

    int insertSelective(AmsUser record);

    List<AmsUser> selectByExample(AmsUserExample example);

    AmsUser selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") AmsUser record, @Param("example") AmsUserExample example);

    int updateByExample(@Param("record") AmsUser record, @Param("example") AmsUserExample example);

    int updateByPrimaryKeySelective(AmsUser record);

    int updateByPrimaryKey(AmsUser record);
}