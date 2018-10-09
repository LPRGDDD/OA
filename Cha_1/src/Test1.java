
import org.apache.ibatis.session.SqlSession;


import com.aaa.util.FactoryUtil;

public class Test1 {

	public static void main(String[] args) {
		SqlSession session=FactoryUtil.getSession();
		System.out.println(session.toString());
	}

}
