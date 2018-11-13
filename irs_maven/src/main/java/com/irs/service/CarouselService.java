package com.irs.service;

import com.irs.pojo.TbCarousel;
import com.irs.util.ResultUtil;

public interface CarouselService {
	//��ȡ�ֲ�ͼ
	public ResultUtil selCarousels(Integer page,Integer limit);

	//����ֲ���Ϣ
	public void insCarouselService(TbCarousel carousel);

	public void updCarouselStatusById(Integer id, Integer status);

	public void delCarouselById(Integer id);

	public void delCarouselByIds(String carouselStr);

	public TbCarousel selCarouselById(Integer id);

	public void updCarouselService(TbCarousel carousel);
}
