import java.sql.Date;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

import com.aaa.dao.PersonDao;
import com.aaa.entity.Person;
import com.aaa.util.FactoryUtil;

public class demo1 {

	@Test
	public void test1(){
		Person p=new Person();
		p.setName("测试2");
		p.setGander("男");
		p.setBirthday(Date.valueOf("1995-04-05"));
		
		SqlSession session=FactoryUtil.getSession();
		PersonDao dao=session.getMapper(PersonDao.class);//
		dao.save(p);
		session.commit();
		session.close();
		System.out.println("操作成功！！！！！！");
	}
	//修改
	@Test
	public void test3(){
		Person p=new Person();
		p.setId(1);
		p.setName("小小郭迪");
		p.setGander("男");
		p.setBirthday(Date.valueOf("1995-04-05"));
		
		SqlSession session=FactoryUtil.getSession();
		PersonDao dao=session.getMapper(PersonDao.class);
		dao.update(p);
		session.commit();
		session.close();
		System.out.println("操作成功！！！！！！");
	}
	//删除
	@Test
	public void test4(){
		SqlSession session=FactoryUtil.getSession();
		PersonDao dao=session.getMapper(PersonDao.class);
		dao.delete(17);
		try {
			session.commit();
			System.out.println("执行成功！！！！");
		} catch (Exception e) {
			// TODO: handle exception
			session.rollback();
		}
		session.close();	
	}
	//查寻
		@Test
		public void test2(){
			SqlSession session=FactoryUtil.getSession();
			PersonDao dao=session.getMapper(PersonDao.class);
			Person p=dao.queryById(1);
			System.out.println("姓名："+p.getName());
			System.out.println("性别："+p.getGander());
			System.out.println("出生日期："+p.getBirthday());
			session.close();
		}
		
}
