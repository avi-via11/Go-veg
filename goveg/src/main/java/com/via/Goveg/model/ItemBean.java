package com.via.Goveg.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "item")
public class ItemBean {
	@Column(name="cat_id")
	private int catId;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int itemId;
	@Column(name="item_name")
	private String itemName;
	@Column(name="item_price")
	private float itemPrice;
	@Column(name="item_quantity")
	private float intemQty;
	@Column(name="item_date")
	private String userId;

	public ItemBean(int catId, String itemName, float itemPrice, float intemQty, String userId) {
		super();
		this.catId = catId;
		this.itemName = itemName;
		this.itemPrice = itemPrice;
		this.intemQty = intemQty;
		this.userId = userId;
	}
	public ItemBean() {
		super();
	}
	public float getIntemQty() {
		return intemQty;
	}
	public void setIntemQty(float intemQty) {
		this.intemQty = intemQty;
	}
	public int getCatId() {
		return catId;
	}
	public void setCatId(int catId) {
		this.catId = catId;
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
	public int getItemId() {
		return itemId;
	}
	public void setItemId(int itemId) {
		this.itemId = itemId;
	}
	public String getuserId() {
		return userId;
	}
	public void setuserId(String userId) {
		this.userId = userId;
	}

}
