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
		p.setName("����2");
		p.setGander("��");
		p.setBirthday(Date.valueOf("1995-04-05"));
		
		SqlSession session=FactoryUtil.getSession();
		PersonDao dao=session.getMapper(PersonDao.class);//
		dao.save(p);
		session.commit();
		session.close();
		System.out.println("�����ɹ�������������");
	}
	//�޸�
	@Test
	public void test3(){
		Person p=new Person();
		p.setId(1);
		p.setName("СС����");
		p.setGander("��");
		p.setBirthday(Date.valueOf("1995-04-05"));
		
		SqlSession session=FactoryUtil.getSession();
		PersonDao dao=session.getMapper(PersonDao.class);
		dao.update(p);
		session.commit();
		session.close();
		System.out.println("�����ɹ�������������");
	}
	//ɾ��
	@Test
	public void test4(){
		SqlSession session=FactoryUtil.getSession();
		PersonDao dao=session.getMapper(PersonDao.class);
		dao.delete(17);
		try {
			session.commit();
			System.out.println("ִ�гɹ���������");
		} catch (Exception e) {
			// TODO: handle exception
			session.rollback();
		}
		session.close();	
	}
	//��Ѱ
		@Test
		public void test2(){
			SqlSession session=FactoryUtil.getSession();
			PersonDao dao=session.getMapper(PersonDao.class);
			Person p=dao.queryById(1);
			System.out.println("������"+p.getName());
			System.out.println("�Ա�"+p.getGander());
			System.out.println("�������ڣ�"+p.getBirthday());
			session.close();
		}
		
}
