package com.lpr.service;

import java.util.List;
import java.util.Map;

import com.lpr.entity.ItemType;
/**
 * н����Ŀ���ͱ�
 * @author ����Ȼ
 *
 */
public interface ItemTypeService {
	/**
	 * н����Ŀ���ͱ�Ĳ�ѯ
	 * @return
	 */
	public List<Map<String, Object>> findAll();
	/**
	 * н����Ŀ���ͱ�����
	 * @param itemtype
	 * @return
	 */
	public int insert(ItemType itemtype);
}
