package com.aaa.util;

import org.aopalliance.intercept.Joinpoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.springframework.orm.hibernate3.HibernateTemplate;

public class LogUtil {
	private HibernateTemplate template;
	public void test(Joinpoint jp,ProceedingJoinPoint pjp){
		
		//template.findByCriteria(b)
	}
}
