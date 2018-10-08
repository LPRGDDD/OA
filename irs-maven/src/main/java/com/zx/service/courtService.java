package com.zx.service;

import java.util.List;
import java.util.Map;

import com.zx.entity.court;

public interface courtService {
     public List<court> findAll();
     public List<Map> findone();
}
