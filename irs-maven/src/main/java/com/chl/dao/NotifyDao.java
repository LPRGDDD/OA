package com.chl.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;


public interface NotifyDao {
	
 //    ��ѯ���в���
	/**
	 * 
	 * @param keyWord
	 * @return
	 */
    public List<Map> getAllDept(@Param("keyWord")String keyWord);
//    ��ѯ���й�������
    /**
     * 
     * @return
     */
    public List<Map> getAllNotifyType();
//    ��ӹ���
    /**
     * 
     * @param map
     * @return
     */
    public int addNotify(Map map);
//    ����userId�鲿��
    /**
     * 
     * @param userId
     * @return
     */
    public int getDeptByUserId(Integer userId);
//    ���ݵ�ǰ��½�˵Ĳ��ű�Ų�ѯ����
    /**
     * 
     * @param keyWord
     * @param deptId
     * @return
     */
    public List<Map> getNotify(@Param("keyWord")String keyWord,@Param("deptId")Integer deptId);
    //    ������� ��ѯ���й���
    /**
     * 
     * @param keyWord
     * @return
     */
    public List<Map> getAllNotify(@Param("keyWord")String keyWord);
}
