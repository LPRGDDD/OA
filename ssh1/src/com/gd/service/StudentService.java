package com.gd.service;

import java.util.List;

import Util.Pager;

public interface StudentService {
public List find();
public Pager findByPage(int curPage,int pageSize);
}
