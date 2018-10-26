package com.irs.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.irs.mapper.TbUsersMapper;
import com.irs.pojo.TbUsers;
import com.irs.pojo.TbUsersExample;
import com.irs.pojo.UserSearch;
import com.irs.pojo.TbUsersExample.Criteria;
import com.irs.service.UserService;
import com.irs.util.EmailUtil;
import com.irs.util.GlobalUtil;
import com.irs.util.MyUtil;
import com.irs.util.ResultUtil;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private TbUsersMapper tbUsersMapper;
	
	@Override
	public TbUsers selUserByEmail(String eMail,Long uid) {
		TbUsersExample example=new TbUsersExample();
		Criteria criteria = example.createCriteria();
		criteria.andEMailEqualTo(eMail);
		if(uid!=null&&!"".equals(uid)){
			criteria.andUidNotEqualTo(uid);
		}
		List<TbUsers> users = tbUsersMapper.selectByExample(example);
		if(users!=null&&users.size()>0){
			return users.get(0);
		}
		return null;
	}

	@Override
	public TbUsers selUserByNickname(String nickname,Long uid) {
		TbUsersExample example=new TbUsersExample();
		Criteria criteria = example.createCriteria();
		criteria.andNicknameEqualTo(nickname);
		if(uid!=null&&!"".equals(uid)){
			criteria.andUidNotEqualTo(uid);
		}
		List<TbUsers> users = tbUsersMapper.selectByExample(example);
		if(users!=null&&users.size()>0){
			return users.get(0);
		}
		return null;
	}

	@Override
	public void insUserService(TbUsers user) throws Exception {
		user.setPassword(DigestUtils.md5DigestAsHex(user.getPassword().getBytes()));
		String code=MyUtil.getStrUUID();
		user.seteCode(code);
		Date date=new Date();
		user.setCreateTime(date);
		if(Boolean.parseBoolean(GlobalUtil.getValue("send.email"))){
			user.setStatus(0+"");//0:δ���1��������2������
			EmailUtil.sendMail(user.geteMail(),code);
		}else{
			user.setStatus(1+"");//0:δ���1��������2������
		}
		tbUsersMapper.insert(user);
	}

	@Override
	public ResultUtil selUsers(Integer page, Integer limit,UserSearch search) {
		PageHelper.startPage(page, limit);
		TbUsersExample example=new TbUsersExample();
		//���ð�����ʱ�併������
		example.setOrderByClause("create_time DESC");
		Criteria criteria = example.createCriteria();
		
		if(search.getNickname()!=null&&!"".equals(search.getNickname())){
			//ע�⣺ģ����ѯ��Ҫ����ƴ�ӡ�%��  ���£�������ƴ���ǲ�����ɲ�ѯ��Ŷ��
			criteria.andNicknameLike("%"+search.getNickname()+"%");
		}
		if(search.getSex()!=null&&!"-1".equals(search.getSex())){
			criteria.andSexEqualTo(search.getSex());
		}
		if(search.getStatus()!=null&&!"-1".equals(search.getStatus())){
			criteria.andStatusEqualTo(search.getStatus());
		}
		if(search.getCreateTimeStart()!=null&&!"".equals(search.getCreateTimeStart())){
			criteria.andCreateTimeGreaterThanOrEqualTo(MyUtil.getDateByString(search.getCreateTimeStart()));
		}
		if(search.getCreateTimeEnd()!=null&&!"".equals(search.getCreateTimeEnd())){
			criteria.andCreateTimeLessThanOrEqualTo(MyUtil.getDateByString(search.getCreateTimeEnd()));
		}
		
		List<TbUsers> users = tbUsersMapper.selectByExample(example);
		PageInfo<TbUsers> pageInfo = new PageInfo<TbUsers>(users);
		ResultUtil resultUtil = new ResultUtil();
		resultUtil.setCode(0);
		resultUtil.setCount(pageInfo.getTotal());
		resultUtil.setData(pageInfo.getList());
		return resultUtil;
	}

	@Override
	public void delUsersService(String userStr) {
		String[] users = userStr.split(",");
		if(users!=null&&users.length>0){
			for (String uid : users) {
				tbUsersMapper.deleteByPrimaryKey(Long.parseLong(uid));
			}
		}
	}

	@Override
	public void delUserByUid(String uid) {
		tbUsersMapper.deleteByPrimaryKey(Long.parseLong(uid));
	}

	@Override
	public TbUsers selUserByUid(Long uid) {
		return tbUsersMapper.selectByPrimaryKey(uid);
	}

	@Override
	public void updUserService(TbUsers user) {
		TbUsers u = tbUsersMapper.selectByPrimaryKey(user.getUid());
		user.setPassword(u.getPassword());
		user.seteCode(u.geteCode());
		user.setCreateTime(u.getCreateTime());
		tbUsersMapper.updateByPrimaryKey(user);
	}

}
