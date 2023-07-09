package com.via.Goveg.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="register")
public class RegisterBean {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int regId;
	@Column(name="first_name")
	private String fName;
	@Column(name="second_name")
	private String lName;
	@Column(name="phno")
	private String phno;
	@Column(name="type")
	private String type;
	public RegisterBean() {
		super();
	}
	@Column(name="address")
	private String address;
	@Column(name="pass")
	private String pass;
	public int getRegId() {
		return regId;
	}
	public void setRegId(int regId) {
		this.regId = regId;
	}

	public String getfName() {
		return fName;
	}
	public void setfName(String fName) {
		this.fName = fName;
	}
	public String getlName() {
		return lName;
	}
	public void setlName(String lName) {
		this.lName = lName;
	}
	public String getPhno() {
		return phno;
	}
	public void setPhno(String phno) {
		this.phno = phno;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
    public RegisterBean(String fName, String lName, String pass, String type, String phno, String address) {
        this.fName = fName;
        this.lName = lName;
        this.pass = pass;
        this.type = type;
        this.phno = phno;
        this.address = address;
    }

}
