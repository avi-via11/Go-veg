package com.via.Goveg.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="purchase")
public class PurchaseBean {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int pur_id;
	@Column(name = "reg_id")
	private int regId;
	@Column(name="item_name")
	private String itemName;
	
	@Column(name="item_price")
	private float itemPrice;
	
	@Column(name="item_qty")
	private float intemQty;
	
	@Column(name="date")
	private Date itemDate;


	public int getRegId() {
		return regId;
	}
	public void setRegId(int regId) {
		this.regId = regId;
	}
	public String getItemName() {
		return itemName;
	}
	public void setItemName(String itemName) {
		this.itemName = itemName;
	}
	public float getItemPrice() {
		return itemPrice;
	}
	public void setItemPrice(float itemPrice) {
		this.itemPrice = itemPrice;
	}
	public float getIntemQty() {
		return intemQty;
	}
	public void setIntemQty(float intemQty) {
		this.intemQty = intemQty;
	}
	public PurchaseBean() {

	}
	public Date getItemDate() {
		return itemDate;
	}
	public void setItemDate(Date itemDate) {
		this.itemDate = itemDate;
	}
	public PurchaseBean(int regId, String itemName, float itemPrice, float intemQty, Date itemDate) {
	
		this.regId = regId;
		this.itemName = itemName;
		this.itemPrice = itemPrice;
		this.intemQty = intemQty;
		this.itemDate = itemDate;
	}


}
