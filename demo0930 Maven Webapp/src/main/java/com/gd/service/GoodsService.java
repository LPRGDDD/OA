package com.gd.service;

import java.util.List;
import java.util.Map;

import com.gd.entity.Goods;

public interface GoodsService {
	/**
	 * ��Ʒ���
	 * @param goods ��Ʒ��
	 * @return 
	 */
	public int save(Goods g);
	/**
	 * ��Ʒ��ѯ
	 * @return
	 */
	public List<Map<String, Object>> findAll();
	/**
	 * ������ƷID��ѯ
	 * @param goodsid
	 * @return
	 */
	public Goods findById(int goodsid);
	/**
	 * ��Ʒ�޸�
	 * @param goods ��Ʒ��
	 * @return
	 */
	public int update(Goods g);
	/**
	 * ��Ʒɾ��
	 * @param goodsid ��Ʒid
	 * @return
	 */
	public int delete(int goodsid);
	/**
	 * ģ����ѯ
	 * @param goodsname ��Ʒ����
	 * @return
	 */
	public List<Map<String, Object>> mohuFind(String goodsname);
	/**
	 *��ȡ������
	 * @return
	 */
	public int getCount();
	/**
	 * ��ҳ��ѯ
	 * @param map ���startIndex��pageSize
	 * @return
	 */
	public List<Goods> pageFind(Map map);
}
