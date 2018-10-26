package com.irs.shiro;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.apache.commons.lang.StringUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.crypto.hash.Md5Hash;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.irs.mapper.AdminMenusMapper;
import com.irs.mapper.TbAdminMapper;
import com.irs.pojo.TbAdmin;
import com.irs.pojo.TbAdminExample;
import com.irs.pojo.TbMenus;
import com.irs.pojo.TbAdminExample.Criteria;

/**
 * 
 * @Desc: �Զ���Realm
 * @author Mr Du
 * @createTime 2018��2��25��
 * @version: v1.0
 */
public class CustomRealm extends AuthorizingRealm {
	@Autowired
	private TbAdminMapper tbAdminMapper;
	@Autowired
	private AdminMenusMapper adminMenusMapper;
	
	private static Logger logger=LoggerFactory.getLogger(CustomRealm.class);

	public CustomRealm() {
		logger.info("CustomRealm====================");
	}

	@Override
	public String getName() {
		return "CustomRealm";
	}

	/**
	 * realm��Ȩ���� ���������principalCollection�õ������Ϣ ���������Ϣ�����ݿ����Ȩ����Ϣ ��Ȩ����Ϣ��Ӹ���Ȩ��Ϣ����
	 * ���� ��Ȩ��Ϣ����(�ж��û�����url�Ƿ���Ȩ����Ϣ��û������)
	 */
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
		TbAdmin admin = (TbAdmin) principalCollection.getPrimaryPrincipal();
		Long roleId = admin.getRoleId();

		List<String> permsList = null;

		// ϵͳ����Ա��ӵ�����Ȩ��
		List<TbMenus> menuList = adminMenusMapper.getMenus(roleId);
		permsList = new ArrayList<>(menuList.size());
		for (TbMenus menu : menuList) {
			if (menu.getPerms() != null && !"".equals(menu.getPerms())) {
				permsList.add(menu.getPerms());
			}
		}

		// �û�Ȩ���б�
		Set<String> permsSet = new HashSet<String>();
		for (String perms : permsList) {
			if (StringUtils.isBlank(perms)) {
				continue;
			}
			permsSet.addAll(Arrays.asList(perms.trim().split(",")));
		}

		SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
		info.setStringPermissions(permsSet);
		return info;
	}

	/**
	 * ����֤��������֤ʱ������Զ���Realm����֤����������֤���ɹ��ص�index.do������ת��index.jspҳ��
	 *
	 * ǰ�᣺����֤�������ռ�����֯�û�����������Ϣ��װΪtoken���󴫵ݸ��˷���
	 *
	 * token:��װ�������Ϣ��ƾ֤��Ϣ 2���裺�ȶ���� ��Ϣ���ȶ�ƾ֤
	 */
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
		String username = (String) token.getPrincipal();
		String password = new String((char[]) token.getCredentials());

		// ��ѯ�û���Ϣ
		TbAdminExample example = new TbAdminExample();
		Criteria criteria = example.createCriteria();
		criteria.andUsernameEqualTo(username);
		List<TbAdmin> admins = tbAdminMapper.selectByExample(example);
		// �˺Ų�����
		if (admins == null || admins.size() == 0) {
			throw new UnknownAccountException("�˺Ų�����!");
		}
		password = new Md5Hash(password).toString();
		// �������
		if (!password.equals(admins.get(0).getPassword())) {
			throw new IncorrectCredentialsException("�˺Ż����벻��ȷ!");
		}

		// �˺�δ�����ɫ
		if (admins.get(0).getRoleId() == null || admins.get(0).getRoleId() == 0) {
			throw new UnknownAccountException("�˺�δ�����ɫ!");
		}

		SimpleAuthenticationInfo info = new SimpleAuthenticationInfo(admins.get(0), password, getName());
		return info;
	}
}
