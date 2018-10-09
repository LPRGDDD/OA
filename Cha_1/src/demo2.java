import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.aaa.dao.StudentDao;
import com.aaa.entity.Student;
import com.aaa.util.FactoryUtil;

public class demo2 {
public static void main(String[] args) {
	SqlSession session=FactoryUtil.getSession();
	StudentDao dao=session.getMapper(StudentDao.class);
	List<Student> list=dao.findAll("a");
	System.out.println(list.size());
	for(Student ss:list){
		System.out.println(ss.getId()+":"+ss.getName());
	}
}
}
