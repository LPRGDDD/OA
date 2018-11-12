package com.chl.entity;



import java.util.List;
import java.util.Map;

public class BasePojo {
    private Map map;

    public Map getMap() {
        return map;
    }

    public void setMap(Map map) {
        this.map = map;
    }

    public List<Map> getList() {
        return list;
    }

    public void setList(List<Map> list) {
        this.list = list;
    }

    public String getTheme() {
        return theme;
    }

    public void setTheme(String theme) {
        this.theme = theme;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    @Override
    public String toString() {
        return "BasePojo{" +
                "map=" + map +
                ", list=" + list +
                ", theme='" + theme + '\'' +
                ", userId=" + userId +
                ", content='" + content + '\'' +
                '}';
    }

    private List<Map> list;
    private String theme;
    private Integer userId;
    private  String content;


}
