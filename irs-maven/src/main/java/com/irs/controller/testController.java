package com.irs.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.irs.service.testService;
/**
 * ≤‚ ‘“≥√Ê
 * @author π˘µœ
 *
 */


@Controller
@RequestMapping("test")
public class testController {
@Autowired
private testService ser;
/*“≥√ÊÃ¯◊™*/
@RequestMapping("/find.action")
public String test() {
	return "page/view/lxm/MyJsp";
}
/*≤‚ ‘≤È—Ø*/
@RequestMapping("/testfind")
public @ResponseBody Map list(Integer page,Integer limit){
	 System.out.println(page);
	 System.out.println(limit);
	 PageHelper.startPage(page,limit);
	 List<Map> list=(List<Map>) ser.find();
	 PageInfo<Map> info=new PageInfo<Map>(list);
	 Map map=new HashMap();
	 map.put("code", 0);
    map.put("msg", "");
    map.put("count",info.getTotal());
    map.put("data", info.getList());
	return map;
}
}
