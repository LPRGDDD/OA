package com.chl.entity;



import java.util.List;
import java.util.Map;

public class BasePojo {
    private Map map;
    private List<Map> list;

    public Map getMap() {
        return map;
    }

    public void setMap(Map map) {
        this.map = map;
    }

    @Override
    public String toString() {
        return "BasePojo{" +
                "map=" + map +
                '}';
    }

	public List<Map> getList() {
		return list;
	}

	public void setList(List<Map> list) {
		this.list = list;
	}
}
