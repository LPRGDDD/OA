package com.zx.dao;

import com.zx.entity.fafang;

public interface fafangMapper {
    int deleteByPrimaryKey(Integer faId);

    int insert(fafang record);

    int insertSelective(fafang record);

    fafang selectByPrimaryKey(Integer faId);

    int updateByPrimaryKeySelective(fafang record);

    int updateByPrimaryKey(fafang record);
}