package com.via.Goveg.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "invoice")

public class InvoiceBean {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(name = "reg_id")
    private int regId;
	
	public String getItemName() {
		return itemName;
	}
	public void setItemName(String itemName) {
		this.itemName = itemName;
	}
	public Float getQty() {
		return qty;
	}
	public void setQty(float qty) {
		this.qty = qty;
	}
	@Column(name="item_name")
	private String itemName;
	@Column(name="item_qty")
	private Float qty;

	
	public InvoiceBean(String itemName, Float qty, int regId, float itemprice) {

		
		this.itemName = itemName;
		this.qty = qty;
		this.regId = regId;
		this.itemprice = itemprice;
	}
	private float itemprice;
	
	public InvoiceBean() {

	}
	
	public float getItemprice() {
		return itemprice;
	}
	public void setItemprice(float itemprice) {
		this.itemprice = itemprice;
	}
	public int getRegId() {
		return regId;
	}
	public void setRegId(int regId) {
		this.regId = regId;
	}



}
