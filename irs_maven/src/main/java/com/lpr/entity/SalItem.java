package com.lpr.entity;

public class SalItem {
	/**
	 * н����Ŀ�����
	 */
    private Integer itemId;//н����Ŀ���

    private String itemName;//н����Ŀ����
    /*н����Ŀ���ͱ�*/
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