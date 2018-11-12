package com.chl.serviceImpl;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chl.dao.MailDao;
import com.chl.entity.Mail;
import com.chl.service.MailService;
@Service
public class MailServiceImpl implements MailService{
@Autowired
	private MailDao dao;
	public int addMail(Map map) {
		// TODO Auto-generated method stub
		return dao.addMail(map);
	}
    @Override
	public List<Map> getMail(String keyWord, Integer userId) {
		// TODO Auto-generated method stub
		return dao.getMail(keyWord, userId);
	}
	
	
	@Override
	public List<Map> selectMail(Integer userId) {
		// TODO Auto-generated method stub
		return dao.selectMail(userId);
	}
	@Override
	public int saveMail(Map map) {
		// TODO Auto-generated method stub
		return dao.saveMail(map);
	}
	@Override
	public List<Map> selectWMail(String keyWord, Integer userId) {
		// TODO Auto-generated method stub
		return dao.selectWMail(keyWord, userId);
	}
	@Override
	@Transactional
	public List selectXMail(Integer emailId) {
		dao.updatesMail(emailId);
		return dao.selectXMail(emailId);
	}
	@Override
	public int delMail(@Param("emailId") Integer emailId) {
		// TODO Auto-generated method stub
		return dao.delMail(emailId);
	}
	@Override
	public int updateMail(Map map) {
		// TODO Auto-generated method stub
		return dao.updateMail(map);
	}
	@Override
	public List<Map> getAllUsers(String keyWord) {
		// TODO Auto-generated method stub
		return dao.getAllUsers(keyWord);
	}
	@Override
	public Map selectById(Integer emailId) {
		// TODO Auto-generated method stub
		return dao.selectById(emailId);
	}
	/*@Override
	public List<Map> selectsMail(String keyWord, Integer userId) {
		// TODO Auto-generated method stub
		return dao.selectsMail(keyWord, userId);
	}
	*/
	@Override
	public List<Map> selectyMail(Integer id) {
		// TODO Auto-generated method stub
		return dao.selectyMail(id);
	}

}
