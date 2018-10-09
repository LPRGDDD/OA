package com.gd.util;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class FactoryUtil {
	private static SqlSessionFactory factory=null;
	private static SqlSession session=null;
	static{
		try {
			String source="mybatis-config.xml";//配置文件
			Reader reader=Resources.getResourceAsReader(source);//加载配置文件
			factory=new SqlSessionFactoryBuilder().build(reader);//基于创建器创建工厂对象 
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public static SqlSession getSession(){
		session=factory.openSession();
		return session;
		
	}
}
