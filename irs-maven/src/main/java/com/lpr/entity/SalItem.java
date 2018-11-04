package com.lpr.entity;

public class SalItem {
	/**
	 * 薪酬项目定义表
	 */
    private Integer itemId;//薪酬项目编号

    private String itemName;//薪酬项目名称
    /*薪酬项目类型表*/
    private ItemType itemtype;

    public Integer getItemId() {
        return itemId;
    }

    public void setItemId(Integer itemId) {
        this.itemId = itemId;
    }

    
    public String getItemName() {
        return itemName;
    }

    public void setItemName(String itemName) {
        this.itemName = itemName == null ? null : itemName.trim();
    }

	public ItemType getItemtype() {
		return itemtype;
	}

	public void setItemtype(ItemType itemtype) {
		this.itemtype = itemtype;
	}
}