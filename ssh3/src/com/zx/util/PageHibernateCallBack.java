package com.zx.util;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;

public class PageHibernateCallBack<T> implements HibernateCallback<List<T>> {

	private String hql;
	private Object[] params;//参数集合
	private int startIndex;//开始索引
	private int pageSize;//每页条数
	
	

	public PageHibernateCallBack(String hql, Object[] params, int startIndex, int pageSize) {
		super();
		this.hql = hql;
		this.params = params;
		this.startIndex = startIndex;
		this.pageSize = pageSize;
	}



	@Override
	public List<T> doInHibernate(Session session) throws HibernateException, SQLException {
		Query query=session.createQuery(hql);
		if(params!=null){
			for (int i = 0; i < params.length; i++) {
				query.setParameter(i, params[i]);
			}
		}
		query.setFirstResult(startIndex);
		query.setMaxResults(pageSize);
		return query.list();
	}

}
