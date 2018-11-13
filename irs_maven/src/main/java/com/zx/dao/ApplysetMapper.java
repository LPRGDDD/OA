package com.zx.dao;

import com.zx.entity.Applyset;

public interface ApplysetMapper {
    int deleteByPrimaryKey(Integer asId);

    int insert(Applyset record);

    int insertSelective(Applyset record);

    Applyset selectByPrimaryKey(Integer asId);

    int updateByPrimaryKeySelective(Applyset record);

    int updateByPrimaryKey(Applyset record);
}