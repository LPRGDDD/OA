package com.irs.controller;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.irs.annotation.SysLog;
import com.irs.pojo.TbCarousel;
import com.irs.service.CarouselService;
import com.irs.util.ResultUtil;

@Controller
@RequestMapping("carousel/")
public class CarouselController {
	@Autowired
	private CarouselService carouselServiceImpl;
	
	@RequestMapping("/carouselList")
	public String carouselList() {
		return "page/carousel/carouselList";
	}
	
	@RequiresPermissions("carousel:carousel:save")
	@RequestMapping("/addCarousel")
	public String addCarousel() {
		return "page/carousel/addCarousel";
	}
	
	@RequiresPermissions("carousel:carousel:save")
	@RequestMapping("/editCarousel")
	public String editCarousel(Integer id,Model model) {
		TbCarousel carousel=carouselServiceImpl.selCarouselById(id);
		model.addAttribute("carousel",carousel);
		return "page/carousel/editCarousel";
	}
	
	@RequestMapping("/list")
	@RequiresPermissions("carousel:carousel:list")
	@ResponseBody
	public ResultUtil getCarouseList(Integer page,Integer limit) {
		ResultUtil carousels = carouselServiceImpl.selCarousels(page, limit);
		return carousels;
	}
	
	/**
	 * ����ֲ���Ϣ
	 * @param carousel
	 * @return
	 */
	@SysLog(value="����ֲ���Ϣ")
	@RequestMapping("/save")
	@RequiresPermissions("carousel:carousel:save")
	@ResponseBody
	public ResultUtil insCarousel(TbCarousel carousel) {
		try {
			carouselServiceImpl.insCarouselService(carousel);
			return ResultUtil.ok();
		} catch (Exception e) {
			return ResultUtil.error("��ӳ���,�Ժ����ԣ�");
		}
	}
	
	/**
	 * �����ֲ���Ϣ
	 * @return
	 */
	@SysLog(value="�����ֲ�ͼ״̬")
	@RequestMapping("/update/{id}/{status}")
	@RequiresPermissions("carousel:carousel:update")
	@ResponseBody
	public ResultUtil updCarouselStatusById(@PathVariable("id") Integer id,@PathVariable("status") Integer status) {
		try {
			carouselServiceImpl.updCarouselStatusById(id,status);
			return ResultUtil.ok();
		} catch (Exception e) {
			return ResultUtil.error("�޸ĳ���,�Ժ����ԣ�");
		}
	}
	
	/**
	 * ɾ��ָ�����ֲ�ͼ
	 * @param id
	 * @return
	 */
	@SysLog(value="ɾ��ָ�����ֲ�ͼ")
	@RequestMapping("/delete")
	@RequiresPermissions("carousel:carousel:delete")
	@ResponseBody
	public ResultUtil delCarouselById(Integer id) {
		try {
			carouselServiceImpl.delCarouselById(id);
			return ResultUtil.ok();
		} catch (Exception e) {
			return ResultUtil.error("�޸ĳ���,�Ժ����ԣ�");
		}
	}
	
	/**
	 * ����ɾ���ֲ�ͼ
	 * @param carouselStr
	 * @return
	 */
	@SysLog(value="����ɾ���ֲ�ͼ")
	@RequestMapping("/deletes")
	@RequiresPermissions("carousel:carousel:delete")
	@ResponseBody
	public ResultUtil delCarousels(String carouselStr) {
		try {
			carouselServiceImpl.delCarouselByIds(carouselStr);
			return ResultUtil.ok();
		} catch (Exception e) {
			return ResultUtil.error("ɾ������,�Ժ����ԣ�");
		}
	}
	
	/**
	 * �����ֲ�ͼ
	 * @param carousel
	 * @return
	 */
	@SysLog(value="�����ֲ�ͼ")
	@RequestMapping("/update")
	@RequiresPermissions("carousel:carousel:update")
	@ResponseBody
	public ResultUtil updCarousel(TbCarousel carousel) {
		try {
			carouselServiceImpl.updCarouselService(carousel);
			return ResultUtil.ok();
		} catch (Exception e) {
			return ResultUtil.error("ɾ������,�Ժ����ԣ�");
		}
	}
}
