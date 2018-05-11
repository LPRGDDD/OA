package com.aaa.dao;

import java.sql.SQLException;
import java.util.List;

import javax.resource.spi.work.HintsContext;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.aaa.entity.Person;
import com.aaa.util.PageHibernateCallBack;
import com.aaa.util.Pager;

@Repository
public class PersonDaoImpl implements PersonDao {

	@Autowired
	private HibernateTemplate  hibernateTemplate;
	
	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	@Override
	public void save(Person p) {
		this.getHibernateTemplate().save(p);
	}

	@Override
	public List find() {
		String hql=" from Person";
		return this.getHibernateTemplate().find(hql);
	}

	@Override
	public Pager findByPages(final int curPage, final int pageSize) {
		//匿名内部类
//		final String hql=" from Person ";
//		List list= this.getHibernateTemplate().executeFind(new HibernateCallback<List<Person>>() {
//
//			@Override
//			public List<Person> doInHibernate(Session session) throws HibernateException, SQLException {
//				Query query=session.createQuery(hql);
//				query.setFirstResult((curPage-1)*pageSize);
//				query.setMaxResults(pageSize);
//				return query.list();
//			}
//		});
		
		
		
		
		Pager p=new Pager(curPage, pageSize);
		String hql="from Person";
		//数据集合
		List list= this.getHibernateTemplate().executeFind(new PageHibernateCallBack<List<Person>>(hql, null, (curPage-1)*pageSize, pageSize));
		//总条数
		List<Long> list2= this.getHibernateTemplate().find("select count(*) from Person");
		p.setList(list);//绑定数据
		p.setTotalRecords(Integer.valueOf(list2.get(0).toString()));//总条数
		
		return p;
	
	}

	@Override
	public void update(Person p) {
		this.getHibernateTemplate().update(p);
		
	}

	@Override
	public void delete(Person p) {
		this.getHibernateTemplate().delete(p);
		
	}

}
