package com.zx.dao;

import com.zx.entity.fafangset;

public interface fafangsetMapper {
    int deleteByPrimaryKey(Integer fsId);

    int insert(fafangset record);

    int insertSelective(fafangset record);

    fafangset selectByPrimaryKey(Integer fsId);

    int updateByPrimaryKeySelective(fafangset record);

    int updateByPrimaryKey(fafangset record);
}