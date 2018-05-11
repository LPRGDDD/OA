package com.gd.actions;

import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.gd.entity.Orderitem;
import com.gd.entity.Orders;
import com.gd.service.OrderService;
import com.opensymphony.xwork2.ActionSupport;
@Controller
public class OrderAction extends ActionSupport{
	@Autowired
private OrderService ser;
private Orders o;
private Orderitem oi;

public String queryOrder(){
	List<Orders> list=ser.queryOrder();
	ServletActionContext.getRequest().setAttribute("olist", list);
	return "queryOrder";
}
public void queryOrder1(){
	List<Orders> list=ser.queryOrder();
	ServletActionContext.getRequest().setAttribute("olist", list);
}
public String queryItem(){
	System.out.println(o.getOrdId());
	List<Orderitem> list=ser.queryItem(o.getOrdId());
	ServletActionContext.getRequest().setAttribute("oilist", list);
	return "queryItem";
	
}
public String get(){
	Orders oget=ser.get(o.getOrdId());
	ServletActionContext.getRequest().setAttribute("o", oget);
	return "get";
	
}
public String update(){
	ser.update(o);
	queryOrder1();
	return "update";
}
public String getItem(){
	Orderitem oitem=ser.getItem(oi.getItemId());
	ServletActionContext.getRequest().setAttribute("oitem", oitem);
	ServletActionContext.getRequest().setAttribute("olist", ser.queryOrder());
	return "getItem";
	
}

public String updateItem(){
	ser.updateItem(oi);
	queryOrder1();
	return "updateItem";
	
}




public OrderService getSer() {
	return ser;
}

public void setSer(OrderService ser) {
	this.ser = ser;
}

public Orders getO() {
	return o;
}

public void setO(Orders o) {
	this.o = o;
}

public Orderitem getOi() {
	return oi;
}

public void setOi(Orderitem oi) {
	this.oi = oi;
}

}
