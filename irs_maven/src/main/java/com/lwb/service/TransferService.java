package com.lwb.service;

import java.util.List;
import java.util.Map;

import com.lwb.entity.Transfer;

public interface TransferService {
		//��ҳ��ѯ����
		public List<Map> queryTransfer(String name,String fertype);
		//�������µ�����Ϣ
	    public int transferSave(Transfer tf);
	    //���ݲ��Ų�ѯ��Ա
	    public List<Map> recoById(int id);
	    //��ѯ�ƻ�����Ա�����ݣ��������ݸ���ҳ��
	  	public List<Map> recordFZ(int id);
	    //�޸�״̬
	  	public int updateDept(int id,int bm);
	    //�޸�ǰ��ѯ
  		public Map transferById(int id);
  		//�޸�
  		public int updateTransfer(Transfer tf);
  	    //��ѯԱ����Ϣ
  	    public List<Map> queryrecord();
}
