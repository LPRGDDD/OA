package com.irs.controller;

import java.awt.image.BufferedImage;
import java.util.List;
import java.util.Map;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.LockedAccountException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.code.kaptcha.Producer;
import com.irs.annotation.SysLog;
import com.irs.pojo.Menu;
import com.irs.pojo.TbAdmin;
import com.irs.pojo.TbMenus;
import com.irs.pojo.TbRoles;
import com.irs.pojo.XtreeData;
import com.irs.service.AdminService;
import com.irs.util.GlobalUtil;
import com.irs.util.JsonUtils;
import com.irs.util.RRException;
import com.irs.util.ResultUtil;
import com.irs.util.ShiroUtils;
import com.irs.util.VerifyCode;
import com.lpr.entity.Dept;
import com.lpr.service.DeptService;

@Controller
@RequestMapping("sys")
public class AdminController {
	@Autowired
	private AdminService adminServiceImpl;
	@Autowired  
    private Producer captchaProducer = null;
	@Autowired
	private DeptService deptSer;
	
	@RequestMapping("/main")
	public String main() {
		return "page/main";
	}
	@RequestMapping("/index")
	public String index(HttpServletRequest req) {
		TbAdmin admin = (TbAdmin)SecurityUtils.getSubject().getPrincipal();
		req.setAttribute("admin", admin);
		return "redirect:/index.jsp";
	}
	@RequestMapping("/refuse")
	public String refuse() {
		return "refuse";
	}

	/**
	 * ����Ա��½
	 * 
	 * @param req
	 * @param username
	 * @param password
	 * @param vcode
	 * @return
	 */
	@RequestMapping("/login")
	@ResponseBody
	public ResultUtil login(HttpServletRequest req, String username, String password, String vcode) {
		if(StringUtils.isEmpty(username)||StringUtils.isEmpty(password)||StringUtils.isEmpty(vcode)){
			throw new RRException("��������Ϊ��");
		}
		if(!vcode.toLowerCase().equals(ShiroUtils.getKaptcha("kaptcha").toLowerCase())){
			return ResultUtil.error("��֤�벻��ȷ");
		}
		try{
			Subject subject = ShiroUtils.getSubject();
			//md5����
			//password=DigestUtils.md5DigestAsHex(password.getBytes());
			UsernamePasswordToken token = new UsernamePasswordToken(username, password);
			subject.login(token);
		}catch (UnknownAccountException e) {
			return ResultUtil.error(e.getMessage());
		}catch (IncorrectCredentialsException e) {
			return ResultUtil.error(e.getMessage());
		}catch (LockedAccountException e) {
			return ResultUtil.error(e.getMessage());
		}catch (AuthenticationException e) {
			return ResultUtil.error("�˻���֤ʧ��");
		}
		return ResultUtil.ok();
		/*String vCode = req.getSession().getAttribute("vcode").toString().toLowerCase();
		if (vcode.toLowerCase().equals(vCode)) {
			TbAdmin admin = adminServiceImpl.login(username, password);
			if (admin != null) {
				// ��½�ɹ�
				// �������ÿ�
				admin.setPassword("");
				// �����û���Ϣ��Session������
				req.getSession().setAttribute("admin", admin);
				return new ResultUtil(0);
			}
			return new ResultUtil(502, "�û������������");
		}
		return new ResultUtil(501, "��֤�����");*/
	}

	/**
	 * �ǳ�
	 * @param req
	 * @return
	 */
	@RequestMapping(value="/loginOut")
	public String loginOut(){
		ShiroUtils.logout();
		return "redirect:/login.jsp";
	}
	
	/**
	 * ��֤��
	 * 
	 * @param req
	 * @param resp
	 * @throws Exception
	 */
	@RequestMapping("/vcode")
	public void vcode(HttpServletRequest req, HttpServletResponse resp) throws Exception {
//		VerifyCode vc = new VerifyCode();
//		BufferedImage image = vc.getImage();// ��ȡһ������֤��ͼƬ
		String text = captchaProducer.createText();
		BufferedImage image = captchaProducer.createImage(text);
		// �÷���������getImage()����֮��������
		// System.out.println("��֤��ͼƬ�ϵ��ı�:"+vc.getText());//��ȡͼƬ�ϵ��ı�
		// ���ı����浽session�У�Ϊ��֤��׼��
		//req.getSession().setAttribute("vcode", vc.getText());
		//���浽shiro session
        ShiroUtils.setSessionAttribute("kaptcha", text);
		//VerifyCode.output(image, resp.getOutputStream());// ��ͼƬд��ָ������
		ImageIO.write(image, "JPEG", resp.getOutputStream());
	}

	/**
	 * ��ȡ�û��˵�
	 * @param req
	 * @param resp
	 * @return
	 */
	@RequestMapping(value = "/getMenus", produces = MediaType.APPLICATION_JSON_VALUE + ";charset=utf-8")
	@ResponseBody
	public List<Menu> getMenus(HttpServletRequest req, HttpServletResponse resp) {
	//TbAdmin admin = (TbAdmin) req.getSession().getAttribute("admin");
		TbAdmin admin = (TbAdmin)SecurityUtils.getSubject().getPrincipal();
		List<Menu> menus = null;
		if (admin != null) {
			// �õ��û��˵�
			menus = adminServiceImpl.selMenus(admin);
		}
		return menus;
	}
	
	@RequestMapping("/adminList")
	public String adminList() {
		return "page/admin/adminList";
	}
	@RequestMapping("/menuList")
	public String menuList() {
		return "page/admin/menuList";
	}
	
	@RequestMapping("/personalData")
	public String personalData(HttpServletRequest req) {
//		TbAdmin admin=(TbAdmin) req.getSession().getAttribute("admin");
		TbAdmin admin = (TbAdmin)SecurityUtils.getSubject().getPrincipal();
		TbAdmin ad = adminServiceImpl.selAdminById(admin.getId());
		List<TbRoles> roles = adminServiceImpl.selRoles();
		req.setAttribute("ad",ad);
		req.setAttribute("roles", roles);
		return "page/admin/personalData";
	}
	
	/**
	 * ����Ա�б�
	 * @param page
	 * @param limit
	 * @return
	 */
	@RequestMapping("/getAdminList")
	@RequiresPermissions("sys:admin:list")
	@ResponseBody
	public ResultUtil getAdminList(Integer page,Integer limit) {
		ResultUtil admins = adminServiceImpl.selAdmins(page, limit);
		return admins;
	}
	
	@RequestMapping("/roleList")
	@RequiresPermissions("sys:role:list")
	public String roleList() {
		return "page/admin/roleList";
	}

	/**
	 * ����Ա�б�
	 * @param req
	 * @param resp
	 * @return
	 */
	@RequestMapping("/getRoleList")
	@RequiresPermissions("sys:role:list")
	@ResponseBody
	public ResultUtil getRoleList(Integer page,Integer limit) {
		return adminServiceImpl.selRoles(page, limit);
	}

	/**
	 * ��ת�༭��ɫҳ��
	 * @param roleId
	 * @param roleName
	 * @param roleRemark
	 * @param req
	 * @return
	 */
	@RequestMapping("/editRole")
	@RequiresPermissions("sys:role:update")
	public String editRole(TbRoles role,Model model) {
		role=adminServiceImpl.getRole(role);
		model.addAttribute("role", role);
		return "page/admin/editRole";
	}
	
	/**
	 * �õ�ָ����ɫȨ����
	 * @param roleId
	 * @param roleName
	 * @return
	 */
	@RequestMapping(value="/xtreedata",produces = {"text/json;charset=UTF-8"})
	@ResponseBody
	public String xtreeData(@RequestParam(value="roleId", defaultValue="-1") Long roleId) {
		TbAdmin admin = new TbAdmin();
		admin.setRoleId(roleId);
		System.out.println(JsonUtils.objectToJson(adminServiceImpl.selXtreeData(admin)));
		return JsonUtils.objectToJson(adminServiceImpl.selXtreeData(admin));
	}
	
	/**
	 * ���½�ɫ��Ϣ
	 * @param roles ��ɫ��Ϣ
	 * @param m Ȩ���ַ���
	 */
	@SysLog(value="���½�ɫ��Ϣ")
	@RequestMapping("/updRole")
	@RequiresPermissions("sys:role:update")
	@ResponseBody
	public void updRole(TbRoles role,String m) {
		//��ɫ��Ϣ����
		adminServiceImpl.updRole(role, m);
	}
	
	/**
	 * ����½�ɫ
	 * @param role
	 * @param m
	 */
	@SysLog(value="��ӽ�ɫ��Ϣ")
	@RequestMapping("/insRole")
	@RequiresPermissions("sys:role:save")
	@ResponseBody
	public ResultUtil insRole(TbRoles role,String m) {
		TbRoles r = adminServiceImpl.selRoleByRoleName(role.getRoleName());
		if(r!=null){
			return new ResultUtil(500, "��ɫ���Ѵ���,�����ԣ�");
		}
		//��ɫ��Ϣ����
		adminServiceImpl.insRole(role, m);
		return ResultUtil.ok();
	}
	
	/**
	 * ɾ��ָ����ɫ��Ϣ
	 * @param roleId
	 * @return
	 */
	@SysLog(value="ɾ��ָ����ɫ��Ϣ")
	@RequestMapping("/delRole/{roleId}")
	@RequiresPermissions("sys:role:delete")
	@ResponseBody
	public ResultUtil delRole(@PathVariable("roleId")Long roleId) {
		ResultUtil resultUtil=new ResultUtil();
		try {
			adminServiceImpl.delRole(roleId);
			resultUtil.setCode(0);
		} catch (Exception e) {
			resultUtil.setCode(500);
			e.printStackTrace();
		}
		return resultUtil;
	}
	
	/**
	 * ����ɾ��ָ����ɫ��Ϣ
	 * @param rolesId
	 * @return
	 */
	@SysLog(value="����ɾ��ָ����ɫ��Ϣ")
	@RequestMapping("/delRoles/{rolesId}")
	@RequiresPermissions("sys:role:delete")
	@ResponseBody
	public ResultUtil delRoles(@PathVariable("rolesId")String rolesId) {
		ResultUtil resultUtil=new ResultUtil();
		try {
			adminServiceImpl.delRoles(rolesId);
			resultUtil.setCode(0);
		} catch (Exception e) {
			resultUtil.setCode(500);
			e.printStackTrace();
		}
		return resultUtil;
	}
	
	@RequestMapping("/addRole")
	@RequiresPermissions("sys:role:save")
	public String addRole() {
		return "page/admin/addRole";
	}
	
	/**
	 * ��ɫ��Ψһ�Լ��
	 * @param roleName
	 * @return
	 */
	@RequestMapping("/checkRoleName/{roleName}")
	@ResponseBody
	public ResultUtil checkRoleName(Long roleId, @PathVariable("roleName")String roleName) {
		TbRoles role = adminServiceImpl.selRoleByRoleName(roleName);
		if(role==null){
			return new ResultUtil(0);
		}else if(role.getRoleId()==roleId){
			return new ResultUtil(0);
		}else{
			return new ResultUtil(500,"��ɫ���Ѵ��ڣ�");
		}
	}
	
	/**
	 * ͨ��idɾ������Ա
	 * @param id
	 * @return
	 */
	@SysLog(value="ɾ��ָ������Ա")
	@RequestMapping("/delAdminById/{id}")
	@RequiresPermissions("sys:admin:delete")
	@ResponseBody
	public ResultUtil delAdminById(@PathVariable("id")Long id) {
		if(id==1){
			return ResultUtil.error();
		}
		try {
			adminServiceImpl.delAdminById(id);
			return ResultUtil.ok();
		} catch (Exception e) {
			e.printStackTrace();
			return ResultUtil.error();
		}
	}
	
	/**
	 * ����ɾ��ָ������Ա
	 * @param id
	 * @return
	 */
	@SysLog(value="����ɾ��ָ������Ա")
	@RequestMapping("/delAdmins/{adminStr}")
	@RequiresPermissions("sys:admin:delete")
	@ResponseBody
	public ResultUtil delAdmins(HttpServletRequest req,@PathVariable("adminStr")String adminStr) {
		String[] strs = adminStr.split(",");
		for (String str : strs) {
			TbAdmin admin = (TbAdmin)SecurityUtils.getSubject().getPrincipal();
			if((admin.getId()==Long.parseLong(str))){
				return ResultUtil.error();
			}
			if("1".equals(str)){
				return ResultUtil.error();
			}
		}
		try {
			adminServiceImpl.delAdmins(adminStr);
			return ResultUtil.ok();
		} catch (Exception e) {
			e.printStackTrace();
			return ResultUtil.error();
		}
	}
	
	@RequestMapping("/addAdmin")
	@RequiresPermissions("sys:admin:save")
	public String addAdmin(HttpServletRequest req){
		List<TbRoles> roles = adminServiceImpl.selRoles();//��ѯȨ��
		List<Dept> d=deptSer.findDept();
		req.setAttribute("roles", roles);
		req.setAttribute("d", d);
		return "page/admin/addAdmin";
	}
	
	/**
	 * ����Ա�û���Ψһ�Լ��
	 * @param roleName
	 * @return
	 */
	@RequestMapping("/checkAdminName/{username}")
	@ResponseBody
	public ResultUtil checkAdminName(@PathVariable("username")String username) {
		TbAdmin admin = adminServiceImpl.selAdminByUserName(username);
		if(admin!=null){
			return new ResultUtil(500,"����Ա�Ѵ��ڣ�");
		}
		return new ResultUtil(0);
	}
	
	/**
	 * �˵���Ψһ��У��
	 * @param title
	 * @return
	 */
	@RequestMapping("/checkMenuTitle/{title}")
	@ResponseBody
	public ResultUtil checkMenuTitle(@PathVariable("title")String title) {
		TbMenus menu = adminServiceImpl.selMenuByTitle(title);
		if(menu!=null){
			return new ResultUtil(500,"�˵��Ѵ��ڣ�");
		}
		return new ResultUtil(0);
	}
	
	/**
	 * ���ӹ���T
	 * �������ͻᵼ���������ʧ�ܣ�����û��Ӧ
	 * @param username
	 * @return
	 */
	@SysLog(value="��ӹ���Ա")
	@RequestMapping("/insAdmin")
	@RequiresPermissions("sys:admin:save")
	@ResponseBody
	public ResultUtil insAdmin(TbAdmin admin) {
		//��ֹ������ύ
		TbAdmin a = adminServiceImpl.selAdminByUserName(admin.getUsername());
		if(a!=null){
			return new ResultUtil(500, "�û����Ѵ���,�����ԣ�");
		}
		adminServiceImpl.insAdmin(admin);
		return ResultUtil.ok();
	}
	
	@RequestMapping("/editAdmin/{id}")
	@RequiresPermissions("sys:admin:update")
	public String editAdmin(HttpServletRequest req,@PathVariable("id")Long id) {
		TbAdmin ad = adminServiceImpl.selAdminById(id);
		List<TbRoles> roles = adminServiceImpl.selRoles();
		List<Dept> d=deptSer.findDept();
		req.setAttribute("d", d);
		req.setAttribute("ad",ad);
		req.setAttribute("roles", roles);
		return "page/admin/editAdmin";
	}
	
	@RequestMapping("/checkAdminByEmail")
	@ResponseBody
	public ResultUtil checkAdminByEmail(String eMail,String username) {
		TbAdmin admin=adminServiceImpl.selAdminByEmail(eMail,username);
		if(admin!=null){
			return new ResultUtil(500,"�����ѱ�ռ�ã�");
		}
		return new ResultUtil(0);
	}
	
	/**
	 * ���¹���Ա��Ϣ
	 * @param admin
	 */
	@SysLog(value="���¹���Ա��Ϣ")
	@RequestMapping("/updAdmin")
	@RequiresPermissions("sys:admin:update")
	@ResponseBody
	public ResultUtil updAdmin(TbAdmin admin) {
		if(admin!=null&&admin.getId()==1){
			return ResultUtil.error("�������޸�!");
		}
		try {
			adminServiceImpl.updAdmin(admin);
			return ResultUtil.ok();
		} catch (Exception e) {
			e.printStackTrace();
			return ResultUtil.error();
		}
	}
	
	@RequestMapping("/changePwd")
	public String changePwd() {
		return "page/admin/changePwd";
	}
	
	/**
	 * �޸�����
	 * @param req
	 * @param oldPwd
	 * @param newPwd
	 * @return
	 */
	@SysLog(value="�޸�����")
	@RequestMapping("/updPwd")
	@ResponseBody
	public ResultUtil updPwd(HttpServletRequest req,String oldPwd,String newPwd) {
		TbAdmin user = (TbAdmin)SecurityUtils.getSubject().getPrincipal();
		if(user!=null){
			//�����˺Ų�֧���޸�����
			if("test".equals(user.getUsername())){
				return ResultUtil.error();
			}
			TbAdmin admin = adminServiceImpl.login(user.getUsername(), oldPwd);
			if(admin!=null){
				admin.setPassword(newPwd);
				adminServiceImpl.updAdmin1(admin);
				//�޸�������Ƴ����������µ�½
				SecurityUtils.getSubject().logout();
				return ResultUtil.ok();
			}else{
				return new ResultUtil(501,"�����������������д��");
			}
		}
		return new ResultUtil(500,"�������");
	}
	
	@RequestMapping("/druid")
	@RequiresPermissions("sys:druid:list")
	public String druid(){
		return "redirect:/druid/index.html";
	}
	
	/**
	 * ��ȡ�˵���Ϣ
	 * @param menu
	 * @return
	 */
	@RequestMapping("/menuData")
	@RequiresPermissions("sys:menu:list")
	@ResponseBody
	public ResultUtil menuData(){
		List<TbMenus> list=adminServiceImpl.selMenusByParentId();
		ResultUtil resultUtil=new ResultUtil();
		resultUtil.setCode(0);
		resultUtil.setCount(list.size()+0L);
		resultUtil.setData(list);
		return resultUtil;
	}
	
	@RequestMapping("/toSaveMenu/{menuId}")
	@RequiresPermissions("sys:menu:save")
	public String toSaveMenu(@PathVariable("menuId") Long menuId,Model model){
		if(menuId!=null&&menuId!=1){
			TbMenus menus=new TbMenus();
			menus.setMenuId(menuId);
			model.addAttribute("menu",menus);
			model.addAttribute("flag","1");
			return "page/admin/menuForm";
		}else{
			model.addAttribute("msg","�����������");
			return "page/active";
		}
	}
	@RequestMapping("/toEditMenu/{menuId}")
	@RequiresPermissions("sys:menu:update")
	public String toEditMenu(@PathVariable("menuId") Long menuId,Model model){
		if(menuId!=null&&menuId!=1){
			TbMenus menus=adminServiceImpl.selMenuById(menuId);
			model.addAttribute("menu",menus);
			return "page/admin/menuForm";
		}else if(menuId==1){
			model.addAttribute("msg","����������˲˵���");
			return "page/active";
		}else{
			model.addAttribute("msg","�����������");
			return "page/active";
		}
	}
	
	@SysLog("ά���˵���Ϣ")
	@RequestMapping("/menuForm")
	@RequiresPermissions(value={"sys:menu:save","sys:menu:update"})
	@ResponseBody
	public ResultUtil menuForm(TbMenus menus,String flag){
		if(StringUtils.isBlank(flag)){
			//ͬ���˵�������ͬ
			List<TbMenus> data=adminServiceImpl.checkTitleSameLevel(menus);
			TbMenus m = adminServiceImpl.selMenuById(menus.getMenuId());
			Boolean f=false;
			if(m.getTitle().equals(menus.getTitle())||data.size()==0){
				f=true;
			}
			if(!f||data.size()>1){
				return ResultUtil.error("ͬ���˵���������ͬ��");
			}
			menus.setSpread("false");
			adminServiceImpl.updMenu(menus);
			return ResultUtil.ok("�޸ĳɹ���");
		}else if(menus.getMenuId()!=1){
			menus.setParentId(menus.getMenuId());
			
			//�涨ֻ��3���˵�
			TbMenus m=adminServiceImpl.selMenusById(menus.getMenuId());
			if(m!=null&&m.getParentId()!=0){
				TbMenus m1=adminServiceImpl.selMenusById(m.getParentId());
				if(m1!=null&&m1.getParentId()!=0){
					return ResultUtil.error("�˲˵�����������Ӳ˵���");
				}
			}
			
			//ͬ���˵�������ͬ
			List<TbMenus> data=adminServiceImpl.checkTitleSameLevel(menus);
			if(data.size()>0){
				return ResultUtil.error("ͬ���˵���������ͬ��");
			}
			
			menus.setMenuId(null);
			menus.setSpread("false");
			adminServiceImpl.insMenu(menus);
			return ResultUtil.ok("��ӳɹ���");
		}else{
			return ResultUtil.error("�˲˵������������");
		}
	}
	
	//delMenuById
	@SysLog(value="ɾ���˵���Ϣ")
	@RequestMapping("/delMenuById/{menuId}")
	@RequiresPermissions("sys:menu:delete")
	@ResponseBody
	public ResultUtil delMenuById(@PathVariable("menuId")Long menuId) {
		try {
			if(menuId==1){
				return ResultUtil.error("�˲˵�������ɾ����");
			}
			//��ѯ�Ƿ����Ӳ˵���������ɾ��
			List<TbMenus> data=adminServiceImpl.selMenusById1(menuId);
			if(data!=null&&data.size()>0){
				return ResultUtil.error("�����Ӳ˵���������ɾ����");
			}
			adminServiceImpl.delMenuById(menuId);
			return ResultUtil.ok("ɾ���ɹ�");
		} catch (Exception e) {
			e.printStackTrace();
			return ResultUtil.error("ϵͳ����");
		}
	}
	
	/**
	 * ��ȡ�˵���Ϣ
	 * @param menu
	 * @return
	 */
	@RequestMapping("/updMenuSortingById")
	@RequiresPermissions("sys:menu:update")
	@ResponseBody
	public ResultUtil updMenuSortingById(Long menuId,String sorting){
		TbMenus menus=new TbMenus();
		menus.setMenuId(menuId);
		try{
		    Long.parseLong(sorting);
		}catch(NumberFormatException e)
		{
			return ResultUtil.error("�޸�ʧ�ܣ�ֻ��������������");
		}
		menus.setSorting(Long.parseLong(sorting));
		adminServiceImpl.updMenuSortingById(menus);
		return ResultUtil.ok();
	}
}
