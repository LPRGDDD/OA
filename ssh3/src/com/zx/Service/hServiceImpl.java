package com.zx.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zx.Dao.hDao;
import com.zx.util.Pager;
@Service
public class hServiceImpl implements hService{
	@Autowired
private hDao dao;

	public hDao getDao() {
	return dao;
}

public void setDao(hDao dao) {
	this.dao = dao;
}

	@Override
	public Pager findByPage(int curPage, int pageSize) {
		// TODO Auto-generated method stub
		
		return dao.findByPage(curPage, pageSize);
	}

}
