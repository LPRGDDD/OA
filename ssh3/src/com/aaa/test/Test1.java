package com.aaa.test;

import java.sql.Date;
import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.aaa.dao.ITest1;
import com.aaa.entity.Person;
import com.aaa.service.PersonService;

public class Test1 {

	public static void main(String[] args) {
		//匿名内部类
//		ITest1 test1=new ITest1() {
//			
//			@Override
//			public void test11() {
//				// TODO Auto-generated method stub
//				
//			}
//		};
		
//		Person p1=new Person("大王","男",Date.valueOf("1996-5-2"));
//		
		ApplicationContext ctx=new ClassPathXmlApplicationContext("applicationContext.xml");
		Person p1= ctx.getBean(Person.class);
		System.out.println(p1);

	}

}
