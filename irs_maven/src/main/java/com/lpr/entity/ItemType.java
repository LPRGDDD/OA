package com.lpr.entity;

public class ItemType {
	/**
	 * 薪酬项目类型表
	 */
    private Integer itemtypeId;//项目类型编号

    private String itemtypeName;//项目类型名称

    public Integer getItemtypeId() {
        return itemtypeId;
    }

    public void setItemtypeId(Integer itemtypeId) {
        this.itemtypeId = itemtypeId;
    }

    public String getItemtypeName() {
        return itemtypeName;
    }

    public void setItemtypeName(String itemtypeName) {
        this.itemtypeName = itemtypeName == null ? null : itemtypeName.trim();
    }
}