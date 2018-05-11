package com.gd.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.gd.entity.Person;

import Util.PageHibernateCallBack;
import Util.Pager;
@Repository
public class PersonDaoImpl implements PersonDao{
@Autowired
private HibernateTemplate hibernateTemplate;
	@Override
	public List find() {
		// TODO Auto-generated method stub
		String hql=" from Person";
		return this.hibernateTemplate.find(hql);
	}
	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}
	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	@Override
	public void del(Person p) {
		// TODO Auto-generated method stub
		hibernateTemplate.delete(p);
	}
	@Override
	public Person get(int id) {
		return hibernateTemplate.get(Person.class, id);
	}
	@Override
	public void update(Person p) {
		// TODO Auto-generated method stub
		System.out.println(p.getGender());
		this.getHibernateTemplate().update(p);
	}
	@Override
	public void save(Person p) {
		// TODO Auto-generated method stub
		this.hibernateTemplate.save(p);
	}
	@Override
	public Pager findByPagers(int curPage, int pageSize) {
		//匿名内部类
		//final String hql=" from Person ";
		/*List list= this.getHibernateTemplate().executeFind(new HibernateCallback<List<Person>>() {

			@Override
			public List<Person> doInHibernate(Session session) throws HibernateException, SQLException {
				Query query=session.createQuery(hql);
				query.setFirstResult((curPage-1)*pageSize);
				query.setMaxResults(pageSize);
				return query.list();
			}
		});*/
		
		
		
		
		Pager p=new Pager(curPage, pageSize);
		String hql="from Person";
		//数据集合
		List list= this.getHibernateTemplate().executeFind(new PageHibernateCallBack(hql, null, (curPage-1)*pageSize, pageSize));
		//总条数
		List<Long> list2= this.getHibernateTemplate().find("select count(*) from Person");
		p.setList(list);//绑定数据
		p.setTotalRecords(Integer.valueOf(list2.get(0).toString()));//总条数
		return p;
	}
	
}
