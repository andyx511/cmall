package com.alex.ni.mapper;

import com.alex.ni.model.AmsRole;
import com.alex.ni.model.AmsRoleExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface AmsRoleMapper {
    long countByExample(AmsRoleExample example);

    int deleteByExample(AmsRoleExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(AmsRole record);

    int insertSelective(AmsRole record);

    List<AmsRole> selectByExample(AmsRoleExample example);

    AmsRole selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") AmsRole record, @Param("example") AmsRoleExample example);

    int updateByExample(@Param("record") AmsRole record, @Param("example") AmsRoleExample example);

    int updateByPrimaryKeySelective(AmsRole record);

    int updateByPrimaryKey(AmsRole record);
}