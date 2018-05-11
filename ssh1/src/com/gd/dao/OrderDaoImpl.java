package com.gd.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.gd.entity.Orderitem;
import com.gd.entity.Orders;
import com.gd.entity.Person;
@Repository
public class OrderDaoImpl implements OrderDao {
	@Autowired
private HibernateTemplate ht;

	public List<Orders> queryOrder() {
		// TODO Auto-generated method stub
		String hql="from Orders";
		return ht.find(hql);
	}

	public List<Orderitem> queryItem(int id) {
		// TODO Auto-generated method stub
		String hql=" from Orderitem oi where oi.orders.ordId="+id+"";
		return ht.find(hql);
	}

	public Orders get(int id) {
		return ht.get(Orders.class, id);
	}

	public void update(Orders o) {
		// TODO Auto-generated method stub
		ht.update(o);
	}

	public Orderitem getItem(int id) {
		// TODO Auto-generated method stub
		return ht.get(Orderitem.class, id);
	}

	public void updateItem(Orderitem oi) {
		// TODO Auto-generated method stub
		ht.update(oi);
	}

	public HibernateTemplate getHt() {
		return ht;
	}

	public void setHt(HibernateTemplate ht) {
		this.ht = ht;
	}

}
