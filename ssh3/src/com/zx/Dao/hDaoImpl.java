package com.zx.Dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.zx.entity.House;
import com.zx.util.PageHibernateCallBack;
import com.zx.util.Pager;
@Repository
public class hDaoImpl implements hDao{
@Autowired
private HibernateTemplate ht;

	public HibernateTemplate getHt() {
	return ht;
}

public void setHt(HibernateTemplate ht) {
	this.ht = ht;
}

	@Override
	public Pager findByPage(int curPage, int pageSize) {
		// TODO Auto-generated method stub
		Pager p=new Pager(curPage,pageSize);
		String hql=" from House ";
		List list=this.getHt().executeFind(new PageHibernateCallBack<List<House>>(hql, null, (curPage-1)*pageSize, pageSize));
		List list2=ht.find("select count(*) from House");
		p.setList(list);
		p.setTotalRecords(Integer.valueOf(list2.get(0).toString()));
		
		return p;
	}

}
