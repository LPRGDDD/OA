package com.gd.service;

import java.util.List;
import java.util.Map;

import com.gd.entity.Goods;

public interface GoodsService {
	/**
	 * 商品添加
	 * @param goods 商品表
	 * @return 
	 */
	public int save(Goods g);
	/**
	 * 商品查询
	 * @return
	 */
	public List<Map<String, Object>> findAll();
	/**
	 * 根据商品ID查询
	 * @param goodsid
	 * @return
	 */
	public Goods findById(int goodsid);
	/**
	 * 商品修改
	 * @param goods 商品表
	 * @return
	 */
	public int update(Goods g);
	/**
	 * 商品删除
	 * @param goodsid 商品id
	 * @return
	 */
	public int delete(int goodsid);
	/**
	 * 模糊查询
	 * @param goodsname 商品名称
	 * @return
	 */
	public List<Map<String, Object>> mohuFind(String goodsname);
	/**
	 *获取总数据
	 * @return
	 */
	public int getCount();
	/**
	 * 分页查询
	 * @param map 存放startIndex，pageSize
	 * @return
	 */
	public List<Goods> pageFind(Map map);
}
