package com.irs.service;


import java.util.List;

import com.irs.pojo.Menu;
import com.irs.pojo.TbAdmin;
import com.irs.pojo.TbMenus;
import com.irs.pojo.TbRoles;
import com.irs.pojo.TbRolesMenus;
import com.irs.pojo.XtreeData;
import com.irs.util.ResultUtil;

public interface AdminService {
	//��½
	public TbAdmin login(String username, String password);
	
	//��ȡ���н�ɫ
	public ResultUtil selRoles(Integer page,Integer limit);
	
	//��ȡ���н�ɫ
	public List<TbRoles> selRoles();
	
	//��ȡ���й���Ա
	public ResultUtil selAdmins(Integer page,Integer limit);
	
	//��ȡ��ɫ�˵�
	public List<Menu> selMenus(TbAdmin admin);
	
	//��ȡָ����ɫȨ����
	public List<TbMenus> selXtreeData(TbAdmin admin);
	//��ȡָ����ɫȨ����
	public List<TbMenus> selXtreeData1(TbAdmin admin);
	
	//���½�ɫ��Ϣ
	public void updRole(TbRoles role,String m);
	
	//ɾ��ָ����ɫ
	public void delRole(Long roleId);

	//����ɾ��ָ����ɫ
	public void delRoles(String rolesId);
	
	//���ݽ�ɫ����ѯ��ɫ
	public TbRoles selRoleByRoleName(String roleName);

	//����½�ɫ
	public void insRole(TbRoles role, String m);

	//ɾ��ָ������Ա
	public void delAdminById(Long id);

	//����ɾ��ָ������Ա
	public void delAdmins(String adminStr);

	//����Ա�û���Ψһ��У��
	public TbAdmin selAdminByUserName(String username);

	//��������Ա
	public void insAdmin(TbAdmin admin);

	//����id�õ�����Ա
	public TbAdmin selAdminById(Long id);

	//����email�õ�����Ա
	public TbAdmin selAdminByEmail(String eMail,String username);

	//���¹���Ա��Ϣ
	public void updAdmin(TbAdmin admin);

	public void updAdmin1(TbAdmin admin);

	public List<TbMenus> selMenusByParentId();

	public TbMenus selMenuById(Long menuId);

	public void insMenu(TbMenus menus);

	public void updMenu(TbMenus menus);

	public TbMenus selMenuByTitle(String title);

	public TbMenus selMenusById(Long menuId);

	public void delMenuById(Long menuId);

	public List<TbMenus> selMenusById1(Long menuId);

	public void updMenuSortingById(TbMenus menus);

	public List<TbMenus> checkTitleSameLevel(TbMenus menus);

	public TbRoles getRole(TbRoles role);
}
