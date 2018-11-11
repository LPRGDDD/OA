package com.lwb.entity;

public class GoodsType {
	private int typeId;
	private String typeName;
	
	
	public int getTypeId() {
		return typeId;
	}
	public void setTypeId(int typeId) {
		this.typeId = typeId;
	}
	public String getTypeName() {
		return typeName;
	}
	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}
	public GoodsType(int typeId, String typeName) {
		super();
		this.typeId = typeId;
		this.typeName = typeName;
	}
	public GoodsType() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
