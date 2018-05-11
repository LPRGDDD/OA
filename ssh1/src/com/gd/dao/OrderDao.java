package com.gd.dao;

import java.util.List;

import com.gd.entity.Orderitem;
import com.gd.entity.Orders;

public interface OrderDao {
	public List<Orders> queryOrder();
	public List<Orderitem> queryItem(int id);
	public Orders get(int id);
	public void update(Orders o);
	//查新明细表id
	public Orderitem getItem(int id);
	//修改商品信息
	public void updateItem(Orderitem oi);
}
