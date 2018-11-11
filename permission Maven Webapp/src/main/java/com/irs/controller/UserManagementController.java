package com.irs.controller;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.irs.annotation.SysLog;
import com.irs.pojo.TbUsers;
import com.irs.pojo.UserSearch;
import com.irs.service.UserService;
import com.irs.util.ResultUtil;

@Controller
@RequestMapping("user/")
public class UserManagementController {
	
	@Autowired
	private UserService userServiceImpl;
	
	@RequestMapping("addUser")
	@RequiresPermissions("user:user:save")
	public String userAdd(){
		return "page/user/addUser";
	}
	
	@RequestMapping("userList")
	@RequiresPermissions("user:user:list")
	public String userList(){
		return "page/user/userList";
	}
	
	@RequestMapping("checkUserByEmail")
	@ResponseBody
	public ResultUtil checkUserEmail(String eMail,Long uid){
		TbUsers user = userServiceImpl.selUserByEmail(eMail,uid);
		if(user!=null){
			return new ResultUtil(500,"�����Ѵ��ڣ���������д��");
		}
		return new ResultUtil(0);
	}
	
	@RequestMapping("checkUserByNickname/{nickname}")
	@ResponseBody
	public ResultUtil checkNickname(@PathVariable("nickname")String nickname,Long uid){
		TbUsers user = userServiceImpl.selUserByNickname(nickname,uid);
		if(user!=null){
			return new ResultUtil(501,"�ǳ��Ѵ��ڣ���������д��");
		}
		return new ResultUtil(0);
	}
	
	/**
	 * ����û�
	 * @param user
	 * @return
	 */
	@SysLog(value="����û�")
	@RequestMapping("insUser")
	@RequiresPermissions("user:user:save")
	@ResponseBody
	public ResultUtil insUser(TbUsers user){
		//��ֹ������ύ
		TbUsers u1 = userServiceImpl.selUserByEmail(user.geteMail(),null);
		TbUsers u2 = userServiceImpl.selUserByNickname(user.getNickname(),null);
		if(u1!=null){
			return new ResultUtil(500,"�����Ѵ��ڣ���������д��");
		}
		if(u2!=null){
			return new ResultUtil(501,"�ǳ��Ѵ��ڣ���������д��");
		}
		try {
			userServiceImpl.insUserService(user);
			return ResultUtil.ok();
		} catch (Exception e) {
			//e.printStackTrace();
			return new ResultUtil(502,"�ʼ����ʹ����������䣡");
		}
	}
	
	@RequestMapping("getUserList")
	@RequiresPermissions("user:user:list")
	@ResponseBody
	public ResultUtil getUserList(Integer page,Integer limit,UserSearch search){
		return userServiceImpl.selUsers(page,limit,search);
	}
	
	/**
	 * ����ɾ���û�
	 * @param userStr
	 * @return
	 */
	@SysLog(value="����ɾ���û�")
	@RequestMapping("delUsers/{userStr}")
	@RequiresPermissions("user:user:delete")
	@ResponseBody
	public ResultUtil delUsers(@PathVariable("userStr")String userStr){
		try {
			userServiceImpl.delUsersService(userStr);
			return ResultUtil.ok();
		} catch (Exception e) {
			e.printStackTrace();
			return ResultUtil.error();
		}
	}
	
	/**
	 * ����IDɾ���û�
	 * @param uid
	 * @return
	 */
	@SysLog(value="����IDɾ���û�")
	@RequestMapping("delUserByUid/{uid}")
	@RequiresPermissions("user:user:delete")
	@ResponseBody
	public ResultUtil delUserByUid(@PathVariable("uid")String uid){
		try {
			userServiceImpl.delUserByUid(uid);;
			return ResultUtil.ok();
		} catch (Exception e) {
			e.printStackTrace();
			return ResultUtil.error();
		}
	}
	
	@RequestMapping("editUser/{uid}")
	@RequiresPermissions("user:user:save")
	public String editUser(@PathVariable("uid")String uid,Model model){
		TbUsers user=userServiceImpl.selUserByUid(Long.parseLong(uid));
		model.addAttribute("user", user);
		return "page/user/editUser";
	}
	
	/**
	 * �����û���Ϣ
	 * @param user
	 * @return
	 */
	@SysLog(value="�����û���Ϣ")
	@RequestMapping("updUser")
	@RequiresPermissions("user:user:update")
	@ResponseBody
	public ResultUtil updUser(TbUsers user){
		try {
			userServiceImpl.updUserService(user);
			return ResultUtil.ok();
		} catch (Exception e) {
			e.printStackTrace();
			return ResultUtil.error();
		}
	}
}
