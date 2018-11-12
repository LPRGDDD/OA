package com.zx.dao;

import com.zx.entity.rati;

public interface ratiMapper {
    int deleteByPrimaryKey(Integer raId);

    int insert(rati record);

    int insertSelective(rati record);

    rati selectByPrimaryKey(Integer raId);

    int updateByPrimaryKeySelective(rati record);

    int updateByPrimaryKey(rati record);

}