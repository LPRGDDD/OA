package com.gd.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gd.dao.OrderDao;
import com.gd.entity.Orderitem;
import com.gd.entity.Orders;
@Service
public class OrderServiceImpl implements OrderService {
@Autowired
private OrderDao dao;
	@Override
	public List<Orders> queryOrder() {
		// TODO Auto-generated method stub
		return dao.queryOrder();
	}

	@Override
	public List<Orderitem> queryItem(int id) {
		// TODO Auto-generated method stub
		return dao.queryItem(id);
	}

	@Override
	public Orders get(int id) {
		// TODO Auto-generated method stub
		return dao.get(id);
	}

	@Override
	public void update(Orders o) {
		// TODO Auto-generated method stub
		dao.update(o);
	}

	@Override
	public Orderitem getItem(int id) {
		// TODO Auto-generated method stub
		return dao.getItem(id);
	}

	@Override
	public void updateItem(Orderitem oi) {
		// TODO Auto-generated method stub
		dao.updateItem(oi);
	}

	public OrderDao getDao() {
		return dao;
	}

	public void setDao(OrderDao dao) {
		this.dao = dao;
	}

}
