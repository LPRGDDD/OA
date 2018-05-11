package com.gd.dao;

import java.util.List;

import Util.Pager;

public interface StudentDao {
public List find();
public Pager findByPage(int curPage,int pageSize);
}
