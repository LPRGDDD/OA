package com.lwb.service;

import java.util.List;
import java.util.Map;

import com.lwb.entity.Talents;

public interface TalentsService {
	    //��ҳ��ѯ����
	    public List<Map> queryAllrck(String keyWord,String major,String pname);
	    //��ѯ�ƻ�
	    public List<Map<String, Object>> planAll();
	    //�����Ʒ
	    public int saverck(Talents t);
	    //����ID��ѯ
	    public Map queryByIdrck(int id);
	    //�޸�
	    public int updaterck(Talents t);
	    //ɾ��
	    public int deleterck(int id);
	    
}
