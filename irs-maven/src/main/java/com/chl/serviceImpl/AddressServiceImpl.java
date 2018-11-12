package com.chl.serviceImpl;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chl.dao.AddressDao;
import com.chl.service.AddressService;
@Service
public class AddressServiceImpl implements AddressService {
@Autowired
private AddressDao dao;

	@Override
	public List<Map> getAddressBook(String keyWord, Integer userId) {
		// TODO Auto-generated method stub
		return dao.getAddressBook(keyWord, userId);
	}

	@Override
	public List<Map> getGroup(String keyWord, Integer userId) {
		// TODO Auto-generated method stub
		return dao.getGroup(keyWord, userId);
	}

	@Override
	public int addGroup(String group_name, Integer userId) {
		// TODO Auto-generated method stub
		return dao.addGroup(group_name, userId);
	}

	@Override
	public int addUser(Map map) {
		// TODO Auto-generated method stub
		return dao.addUser(map);
	}

	@Override
	public int updateUser(Map map) {
		// TODO Auto-generated method stub
		return dao.updateUser(map);
	}

	@Override
	public int delUser(@Param("addId")Integer addId) {
		// TODO Auto-generated method stub
		return dao.delUser(addId);
	}

	@Override
	public Map selectById(Integer add_id) {
		// TODO Auto-generated method stub
		return dao.selectById(add_id);
	}

	@Override
	public List<Map> getAllDept(String keyWord) {
		// TODO Auto-generated method stub
		return dao.getAllDept(keyWord);
	}

	@Override
	public List<Map> getAllNotifyType() {
		// TODO Auto-generated method stub
		return dao.getAllNotifyType();
	}

	@Override
	public int addNotify(Map map) {
		// TODO Auto-generated method stub
		return dao.addNotify(map);
	}

	@Override
	public int getDeptByUserId(Integer userId) {
		// TODO Auto-generated method stub
		return dao.getDeptByUserId(userId);
	}

	@Override
	public List<Map> getNotify(String keyWord, Integer deptId) {
		// TODO Auto-generated method stub
		return dao.getNotify(keyWord, deptId);
	}

	@Override
	public List<Map> getAllNotify(String keyWord) {
		// TODO Auto-generated method stub
		return dao.getAllNotify(keyWord);
	}

	/*@Override
	public List<Map> getAllUsers(String keyWord) {
		// TODO Auto-generated method stub
		return dao.getAllUsers(keyWord);
	}*/

}
