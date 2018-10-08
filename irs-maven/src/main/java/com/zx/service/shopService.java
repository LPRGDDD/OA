package com.zx.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import com.zx.entity.shop;

@Service
public interface shopService {
     public List<shop> findAll();
     public List<shop> findById(int sId);
     public int updateshop(shop s);
     public int addshop(shop s);
     //����goId��ѯ��Ʒ
     public List<shop> findshop(int goId);
//     ģ����ѯ
     public List<Map> findvag(@Param("cId")int cId,@Param("goId")int goId,@Param("sId")int sId);
}
