package com.zx.dao;

import com.zx.entity.ratiset;

public interface ratisetMapper {
    int deleteByPrimaryKey(Integer rsId);

    int insert(ratiset record);

    int insertSelective(ratiset record);

    ratiset selectByPrimaryKey(Integer rsId);

    int updateByPrimaryKeySelective(ratiset record);

    int updateByPrimaryKey(ratiset record);
}