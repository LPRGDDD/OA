package com.lpr.service;

import java.util.List;
import java.util.Map;

import com.lpr.entity.SalItem;

public interface SalItemService {
	
	/**
	 * н����Ŀ������ѯ
	 * @return
	 */
    public List<Map<String, Object>> findAll();
    /**
     * н����Ŀ����� ���
     * @param salitem
     * @return
     */
    public int insert(SalItem salitem);
    /**
     * н����Ŀ�����ı༭
     * @param salitem
     * @return
     */
    public int update(SalItem salitem);
    /**
     * ����н����Ŀ���ɾ��
     * @param itemIdн����Ŀ���
     * @return
     */
    public int delete(int itemId);
    /**
     * н����Ŀ�����༭֮ǰ�Ĳ�ѯ
     * @param itemIdн����Ŀ���
     * @return
     */
    SalItem selectByPrimaryKey(Integer itemId);
}
