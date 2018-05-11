package com.zx.Dao;

import com.zx.util.Pager;

public interface hDao {
  public Pager findByPage(int curPage,int pageSize);
}
