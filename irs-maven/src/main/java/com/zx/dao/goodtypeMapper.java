package com.zx.dao;

import java.util.List;
import java.util.Map;

import com.zx.entity.good_type;
import com.zx.entity.goodtype;

public interface goodtypeMapper {
//	��ѯ�������
	public List<Map> queryAll();
	//����������Ĳ�ѯ
	public List<goodtype> findAll();
//	���ֿ�id��ѯ
	public List<goodtype> findtype(int cId);
//	ɾ��
	public List<goodtype> findtype2(int goId);
	
    public int deleteByPrimaryKey(int go_id);
//    ¼��
    public int insert(goodtype gt);
//    ��ѯ����
    public List<Map> findone(int go_id);
//    �����ѯ
    public List<Map> findByid();
    
    public int updateone(good_type gt);

   
   
}