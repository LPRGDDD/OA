package com.lwb.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.lwb.entity.Transfer;

public interface TransferDao {
	//��ҳ��ѯ����
	public List<Map> queryTransfer(@Param("name") String name,@Param("fertype")String fertype);
	//�������µ�����Ϣ
    public int transferSave(Transfer tf);
    //���ݲ��Ų�ѯ��Ա
    public List<Map> recoById(int id);
    //��ѯԱ����Ϣ
    public List<Map> queryrecord();
    //��ѯ�ƻ�����Ա�����ݣ��������ݸ���ҳ��
	public List<Map> recordFZ(int id);
	//�޸�״̬
	public int updateDept(@Param("id")int id,@Param("bm")int bm);
	//�޸�ǰ��ѯ
	public Map transferById(int id);
	//�޸�
	public int updateTransfer(Transfer tf);
}
