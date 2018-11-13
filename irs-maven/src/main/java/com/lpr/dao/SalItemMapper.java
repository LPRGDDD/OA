package com.lpr.dao;

import java.util.List;
import java.util.Map;

import com.lpr.entity.SalItem;
/**
 * н����Ŀ�����
 * @author ����Ȼ
 *
 */
public interface SalItemMapper {
	/**
	 * ����н����ɾ��
	 * @param itemIdн����
	 * @return
	 */
    int deleteByPrimaryKey(Integer itemId);
   /**
    * н����Ŀ��������
    * @param record
    * @return
    */
    int insert(SalItem salitem);
    /**
     * н����Ŀ��������
     * @param record
     * @return
     */
    int insertSelective(SalItem record);

    /**
     * ����н���Ų�ѯ,�༭֮ǰ�Ĳ�ѯ
     * @param itemIdн����
     * @return
     */
    SalItem selectByPrimaryKey(Integer itemId);

    /**
     * н����Ŀ������޸�
     * @param record
     * @return
     */
    int updateByPrimaryKeySelective(SalItem record);
    /**
     *н����Ŀ����� �޸�
     * @param record
     * @return
     */
    int updateByPrimaryKey(SalItem record);
    /**
     * н�궨���Ĳ�ѯ
     * @return
     */
    public List<Map<String, Object>> findAll();
    /**
     * н����Ŀ�������޸�
     * @param salitem
     * @return
     */
    public int update(SalItem salitem);
    /**
     * ����н����Ŀ���ɾ��
     * @param itemIdн����
     * @return
     */
    public int delete(int itemId);
}