package com.zx.Service;

import com.zx.util.Pager;

public interface hService {
  public Pager findByPage(int curPage,int pageSize);
}
