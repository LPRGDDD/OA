package com.lpr.entity;

public class ItemType {
	/**
	 * н����Ŀ���ͱ�
	 */
    private Integer itemtypeId;//��Ŀ���ͱ��

    private String itemtypeName;//��Ŀ��������

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