package com.lwb.dao;

import java.util.List;
import java.util.Map;

import com.lwb.entity.Dimission;


public interface DimissionDao {
	    //��ҳ��ѯ����
		public List<Map> queryDimission();
		//�������µ�����Ϣ
	    public int dimissionSave(Dimission di);
	    //����ID��ѯ
	    public Map dimissionById(int id);
	    //�޸�
	    public int updateDimission(Dimission di);
	    //�޸���Ա״̬Ϊ4(��ְ״̬)
		public int updaterecordStats4(int id);
}
