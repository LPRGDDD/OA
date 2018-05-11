package com.gd.entity;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;


/**
 * Orders entity. @author MyEclipse Persistence Tools
 */

public class Orders  implements java.io.Serializable {


    // Fields    

     private Integer ordId;
     private String ordName;
     private String ordAddress;
     private String ordPhone;
     private Date ordDate;
     private Set orderitems = new HashSet(0);


    // Constructors

    /** default constructor */
    public Orders() {
    }

    
    /** full constructor */
    public Orders(String ordName, String ordAddress, String ordPhone, Date ordDate, Set orderitems) {
        this.ordName = ordName;
        this.ordAddress = ordAddress;
        this.ordPhone = ordPhone;
        this.ordDate = ordDate;
        this.orderitems = orderitems;
    }

   
    // Property accessors

    public Integer getOrdId() {
        return this.ordId;
    }
    
    public void setOrdId(Integer ordId) {
        this.ordId = ordId;
    }

    public String getOrdName() {
        return this.ordName;
    }
    
    public void setOrdName(String ordName) {
        this.ordName = ordName;
    }

    public String getOrdAddress() {
        return this.ordAddress;
    }
    
    public void setOrdAddress(String ordAddress) {
        this.ordAddress = ordAddress;
    }

    public String getOrdPhone() {
        return this.ordPhone;
    }
    
    public void setOrdPhone(String ordPhone) {
        this.ordPhone = ordPhone;
    }

    public Date getOrdDate() {
        return this.ordDate;
    }
    
    public void setOrdDate(Date ordDate) {
        this.ordDate = ordDate;
    }

    public Set getOrderitems() {
        return this.orderitems;
    }
    
    public void setOrderitems(Set orderitems) {
        this.orderitems = orderitems;
    }
   








}