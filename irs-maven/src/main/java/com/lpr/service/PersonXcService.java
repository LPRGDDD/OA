package com.lpr.service;

import java.util.List;
import java.util.Map;

import com.lpr.entity.PersonXc;
/**
 * Ա��н��������ñ�
 * @author ����Ȼ
 *
 */
public interface PersonXcService {
	/**
	 * �����û�ID��ѯ��ǰ�û�н�����
	 * @return
	 */
	public List<Map<String, Object>> findAll(Integer userId);
	/**
	 * Ա����н���������
	 * @return
	 */
	public int PLinsert(PersonXc p,String userId);
	/**
	 * Ա��н���ķ�ҳ��ѯ
	 * @param userId
	 * @return
	 */
	public List<Map> findPage();
	
	public List<Map> findByUid(Integer uid);
}
