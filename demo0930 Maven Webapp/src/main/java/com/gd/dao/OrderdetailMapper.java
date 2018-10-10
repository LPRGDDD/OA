package com.gd.dao;

import com.gd.entity.*;

public interface OrderdetailMapper {
    int deleteByPrimaryKey(OrderdetailKey key);

    int insert(Orderdetail record);

    int insertSelective(Orderdetail record);

    Orderdetail selectByPrimaryKey(OrderdetailKey key);

    int updateByPrimaryKeySelective(Orderdetail record);

    int updateByPrimaryKey(Orderdetail record);
}