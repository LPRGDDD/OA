package com.lwb.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.lwb.entity.Dimission;


public interface DimissionDao {
	    //��ҳ��ѯ����
		public List<Map> queryDimission(@Param("name") String name,@Param("dept")String dept,@Param("leavetype")String leavetype);
		//�������µ�����Ϣ
	    public int dimissionSave(Dimission di);
	    //����ID��ѯ
	    public Map dimissionById(int id);
	    //�޸�
	    public int updateDimission(Dimission di);
	    //�޸���Ա״̬Ϊ4(��ְ״̬)
		public int updaterecordStats4(int id);
}
