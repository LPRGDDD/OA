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
			String source="mybatis-config.xml";//�����ļ�
			Reader reader=Resources.getResourceAsReader(source);//���������ļ�
			factory=new SqlSessionFactoryBuilder().build(reader);//���ڴ����������������� 
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
