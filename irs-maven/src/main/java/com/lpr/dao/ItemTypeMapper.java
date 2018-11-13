package com.lpr.dao;

import java.util.List;
import java.util.Map;

import com.lpr.entity.ItemType;
/**
 * н����Ŀ���ͱ�
 * @author ����Ȼ
 *
 */
public interface ItemTypeMapper {
	/**
	 * ����н����Ŀ���ͱ��ɾ��
	 * @param itemtypeIdн����Ŀ���ͱ��
	 * @return
	 */
    int deleteByPrimaryKey(Integer itemtypeId);
    /**
     * н����Ŀ���ͱ����
     * @param record
     * @return
     */
    int insert(ItemType itemtype);
    /**
     * н����Ŀ���ͱ����
     * @param record
     * @return
     */
    int insertSelective(ItemType record);
    /**
     * ����н����Ŀ���ͱ�Ų�ѯ
     * @param itemtypeIdн����Ŀ���ͱ��
     * @return
     */
    ItemType selectByPrimaryKey(Integer itemtypeId);
    /**
     * н����Ŀ���ͱ��޸�
     * @param record
     * @return
     */
    int updateByPrimaryKeySelective(ItemType record);
    /**
     * н����Ŀ���ͱ��޸�
     * @param record
     * @return
     */
    int updateByPrimaryKey(ItemType record);
    /**
     * н����Ŀ���ͱ�Ĳ�ѯ
     * @return
     */
    public List<Map<String, Object>> findAll();
}