package com.lxm.serviceImpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lxm.dao.SynthesisMapper;
import com.lxm.entity.Synthesis;
import com.lxm.service.SynthesisService;
@Service
public class SynthesisServiceImpl implements SynthesisService {
	@Autowired
	private SynthesisMapper sm;
	@Override
	@Transactional
	public int insert(Synthesis record) {
		return sm.insert(record);
	}
	@Override
	public List<Map<String, Object>> selectAll(int id) {
		return sm.selectAll(id);
	}
	@Override
	@Transactional
	public Map<String,Object> selectUpdate(int id, int sId) {
		return sm.selectUpdate(id, sId);
	}
	@Override
	@Transactional
	public int updateWai(Synthesis ss) {
		return sm.updateWai(ss);
	}
	@Override
	@Transactional
	
	public int delete(int id) {
		return sm.delete(id);
	}
	@Override
	@Transactional
	public List<Map<String, Object>> selectDaiShen(int id) {
		return sm.selectDaiShen(id);
	}
	@Override
	@Transactional
	public Map<String, Object> selectXiang(int id, int sId) {
		return sm.selectXiang(id, sId);
	}
	@Override
	@Transactional
	public int updateState(int sid) {
		return sm.updateState(sid);
	}
	@Override
	@Transactional
	public List<Map<String, Object>> ShenWaiChu(int id) {
		return sm.ShenWaiChu(id);
	}
	@Override
	@Transactional
	public int WaiChuHuiGui(Map<String,Object> map) {
		return sm.WaiChuHuiGui(map);
	}
	@Override
	@Transactional
	public int BoHuiUpdate(Map<String, Object> map) {
		return sm.BoHuiUpdate(map);
	}
	@Override
	@Transactional
	public int QingJiaSave(Synthesis sy) {
		return sm.QingJiaSave(sy);
	}
	@Override
	@Transactional
	public List<Map<String, Object>> QingJiaSel(int id) {
		return sm.QingJiaSel(id);
	}
	
	@Override
	@Transactional
	public Map<String, Object> QingJiaUpdate(int id, int sId) {
		return sm.QingJiaUpdate(id, sId);
	}
	@Override
	@Transactional
	public int QingjiaXiu(Synthesis sy) {
		return sm.QingjiaXiu(sy);
	}
	@Override
	public Map<String, Object> selectUpdateQing(int id, int sId) {
		return sm.selectUpdateQing(id, sId);
	}
	@Override
	public List<Map<String, Object>> ShenQing(int id) {
		return sm.ShenQing(id);
	}
	@Override
	public List<Map<String, Object>> JiaBanSel(int id) {
		return sm.JiaBanSel(id);
	}
	@Override
	public Map<String, Object> JiaBanUpdate(int id, int sId) {
		return sm.JiaBanUpdate(id, sId);
	}
	@Override
	public List<Map<String, Object>> ShenJia(int id) {
		return sm.ShenJia(id);
	}
	@Override
	public int JiaBanSave(Synthesis sy) {
		return sm.JiaBanSave(sy);
	}
	@Override
	public List<Map<String, Object>> ChuChaiSel(int id) {
		return sm.ChuChaiSel(id);
	}
	public Map<String, Object> ChuChaiUpdate(int id, int sId) {
		return sm.ChuChaiUpdate(id, sId);
	}
	@Override
	public int ChuChaiXiu(Synthesis sy) {
		return sm.ChuChaiXiu(sy);
	}
	@Override
	public List<Map<String, Object>> ShenChuChai(int id) {
		return sm.ShenChuChai(id);
	}
	
	

}
