package com.zx.service;

import java.util.List;
import java.util.Map;

import com.zx.entity.good_type;
import com.zx.entity.goodtype;

public interface deptService2 {
	//����������Ĳ�ѯ
  public List<Map> queryAll();
  //¼��
  public int insert(goodtype gt);
  //ɾ��
  public int delete(int go_id);
  //����������ѯ
  public List<Map> findone(int go_id);
  //�޸�
  public int updateone(good_type gt);
  
  public List<Map> findByid();
//  ���ݲֿ��ѯ����
  public List<goodtype> findtype(int cId);
//  ��������
  public List<goodtype> findtype2(int goId);
}
