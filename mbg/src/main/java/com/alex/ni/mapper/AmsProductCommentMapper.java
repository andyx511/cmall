package com.alex.ni.mapper;

import com.alex.ni.model.AmsProductComment;
import com.alex.ni.model.AmsProductCommentExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface AmsProductCommentMapper {
    long countByExample(AmsProductCommentExample example);

    int deleteByExample(AmsProductCommentExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(AmsProductComment record);

    int insertSelective(AmsProductComment record);

    List<AmsProductComment> selectByExample(AmsProductCommentExample example);

    AmsProductComment selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") AmsProductComment record, @Param("example") AmsProductCommentExample example);

    int updateByExample(@Param("record") AmsProductComment record, @Param("example") AmsProductCommentExample example);

    int updateByPrimaryKeySelective(AmsProductComment record);

    int updateByPrimaryKey(AmsProductComment record);
}