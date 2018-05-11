package com.gd.entity;

import java.util.Date;


/**
 * Orderitem entity. @author MyEclipse Persistence Tools
 */

public class Orderitem  implements java.io.Serializable {


    // Fields    

     private Integer itemId;
     private Orders orders;
     private String itemName;
     private Double itemPrice;
     private Date itemDate;
     private String itemBrand;
     private Integer itemNum;


    // Constructors

    /** default constructor */
    public Orderitem() {
    }

    
    /** full constructor */
    public Orderitem(Orders orders, String itemName, Double itemPrice, Date itemDate, String itemBrand, Integer itemNum) {
        this.orders = orders;
        this.itemName = itemName;
        this.itemPrice = itemPrice;
        this.itemDate = itemDate;
        this.itemBrand = itemBrand;
        this.itemNum = itemNum;
    }

   
    // Property accessors

    public Integer getItemId() {
        return this.itemId;
    }
    
    public void setItemId(Integer itemId) {
        this.itemId = itemId;
    }

    public Orders getOrders() {
        return this.orders;
    }
    
    public void setOrders(Orders orders) {
        this.orders = orders;
    }

    public String getItemName() {
        return this.itemName;
    }
    
    public void setItemName(String itemName) {
        this.itemName = itemName;
    }

    public Double getItemPrice() {
        return this.itemPrice;
    }
    
    public void setItemPrice(Double itemPrice) {
        this.itemPrice = itemPrice;
    }

    public Date getItemDate() {
        return this.itemDate;
    }
    
    public void setItemDate(Date itemDate) {
        this.itemDate = itemDate;
    }

    public String getItemBrand() {
        return this.itemBrand;
    }
    
    public void setItemBrand(String itemBrand) {
        this.itemBrand = itemBrand;
    }

    public Integer getItemNum() {
        return this.itemNum;
    }
    
    public void setItemNum(Integer itemNum) {
        this.itemNum = itemNum;
    }
   








}