package com.gd.test;

import java.util.Iterator;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.gd.dao.ClassesDao;
import com.gd.entity.Classes;
import com.gd.util.FactoryUtil;

public class Classes_test1 {

	public static void main(String[] args) {
		SqlSession session=FactoryUtil.getSession();
		ClassesDao dao=session.getMapper(ClassesDao.class);
		List<Classes> list=dao.findAll();
		for(Classes classes:list){
			System.out.println(classes.getCid()+":"+classes.getCname());
			System.out.println(classes.getStudents());
		}
	}

}
