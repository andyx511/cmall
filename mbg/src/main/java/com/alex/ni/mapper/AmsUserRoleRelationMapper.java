package com.alex.ni.mapper;

import com.alex.ni.model.AmsUserRoleRelation;
import com.alex.ni.model.AmsUserRoleRelationExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface AmsUserRoleRelationMapper {
    long countByExample(AmsUserRoleRelationExample example);

    int deleteByExample(AmsUserRoleRelationExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(AmsUserRoleRelation record);

    int insertSelective(AmsUserRoleRelation record);

    List<AmsUserRoleRelation> selectByExample(AmsUserRoleRelationExample example);

    AmsUserRoleRelation selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") AmsUserRoleRelation record, @Param("example") AmsUserRoleRelationExample example);

    int updateByExample(@Param("record") AmsUserRoleRelation record, @Param("example") AmsUserRoleRelationExample example);

    int updateByPrimaryKeySelective(AmsUserRoleRelation record);

    int updateByPrimaryKey(AmsUserRoleRelation record);
}