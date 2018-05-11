package com.gd.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.gd.entity.Students;

import Util.PageHibernateCallBack;
import Util.Pager;
@Repository
public class StudentDaoImpl implements StudentDao {
	@Autowired
private HibernateTemplate hibernateTemplate;
	@Override
	public List find() {
		// TODO Auto-generated method stub
		String hql="from Students";
		return hibernateTemplate.find(hql);
	}
	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}
	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	@Override
	public Pager findByPage(int curPage, int pageSize) {
		// TODO Auto-generated method stub
		Pager p=new Pager(curPage, pageSize);
		String hql="from Students";
		//查询的数据
		List list=this.getHibernateTemplate().executeFind(new PageHibernateCallBack<List<Students>>(hql, null, (curPage-1)*pageSize, pageSize));
		List<Long> list2=this.getHibernateTemplate().find("select count(*) from Students");
		p.setList(list);
		p.setTotalRecords(Integer.valueOf(list2.get(0).toString()));//存进去总条数
		return p;
	}

}
