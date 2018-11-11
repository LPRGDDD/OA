package com.lwb.serviceImpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lwb.dao.TransferDao;
import com.lwb.entity.Transfer;
import com.lwb.service.TransferService;
@Service
public class TransferServiceImpl implements TransferService {

	@Autowired
	private TransferDao dao;
	
	@Override
	public int transferSave(Transfer tf) {
		// TODO Auto-generated method stub
		return dao.transferSave(tf);
	}

	@Override
	public List<Map> recoById(int id) {
		// TODO Auto-generated method stub
		return dao.recoById(id);
	}

	@Override
	public List<Map> recordFZ(int id) {
		// TODO Auto-generated method stub
		return dao.recordFZ(id);
	}

	@Override
	public List<Map> queryTransfer() {
		// TODO Auto-generated method stub
		return dao.queryTransfer();
	}

	@Override
	public int updateDept(int id, int bm) {
		// TODO Auto-generated method stub
		return dao.updateDept(id, bm);
	}

	@Override
	public Map transferById(int id) {
		// TODO Auto-generated method stub
		return dao.transferById(id);
	}

	@Override
	public int updateTransfer(Transfer tf) {
		// TODO Auto-generated method stub
		return dao.updateTransfer(tf);
	}

	@Override
	public List<Map> queryrecord() {
		// TODO Auto-generated method stub
		return dao.queryrecord();
	}

}
