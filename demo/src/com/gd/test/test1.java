package com.gd.test;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

import com.gd.dao.StudentDao;
import com.gd.entity.Student;
import com.gd.util.FactoryUtil;

public class test1 {
/*��ѯ*/
	@Test
public void select(){
	SqlSession session=FactoryUtil.getSession();
	StudentDao dao=session.getMapper(StudentDao.class);
	Student s=dao.select(1);
	System.out.println(s.getSid()+s.getSname());
}
	/*¼��*/
	@Test
public void save(){
	Student s=new Student();
	s.setSname("��Ӳ�id");
	s.setSgender("��");
	SqlSession session=FactoryUtil.getSession();
	StudentDao dao=session.getMapper(StudentDao.class);
	dao.save(s);
	System.out.println(s.getSid());
	session.commit();
	session.close();

}
	/*��ѯ����*/
		@Test
	public void findAll(){
		SqlSession session=FactoryUtil.getSession();
		StudentDao dao=session.getMapper(StudentDao.class);
		List<Student> list=dao.findAll();
		for(Student ss:list){
			System.out.println(ss.getSid()+":"+ss.getSname());
		}
	}	
		/*ģ����ѯ*/
		@Test
		public void queryByName(){
			SqlSession session=FactoryUtil.getSession();
			StudentDao dao=session.getMapper(StudentDao.class);
			List<Student> list=dao.queryByName("С");
			System.out.println(list.size());
			for(Student ss:list){
				System.out.println(ss.getSid()+":"+ss.getSname());
			}
		}
		@Test
		public void queryByMap(){
			SqlSession session=FactoryUtil.getSession();
			StudentDao dao=session.getMapper(StudentDao.class);
			
			List<Map> list= dao.select1();
			System.out.println(list.size());
			for(Map ss:list){
				Object obj= ss.get("sname");
				System.out.println(obj);
			}
		}
		@Test
		public void queryStudent(){
			SqlSession session=FactoryUtil.getSession();
			StudentDao dao=session.getMapper(StudentDao.class);
			List<Student> list=dao.queryStudent();
			System.out.println(list);
			session.close();
		}
}
