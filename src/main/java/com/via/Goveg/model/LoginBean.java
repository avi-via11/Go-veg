package com.via.Goveg.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="login")
public class LoginBean {
	@Column(name="log_name")
	private String logname;
	@Column(name="log_pass")
	private String logpass;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int logId;
	@Column(name="log_role")
	private String logrole;
	
	
	
	public String getLogrole() {
		return logrole;
	}
	public void setLogrole(String logrole) {
		this.logrole = logrole;
	}
	public String getLogname() {
		return logname;
	}
	public void setLogname(String logname) {
		this.logname = logname;
	}
	public String getLogpass() {
		return logpass;
	}
	public void setLogpass(String logpass) {
		this.logpass = logpass;
	}
	public int getLogId() {
		return logId;
	}
	public void setLogId(int logId) {
		this.logId = logId;
	}
	public LoginBean(String logname, String logpass, String logrole) {
		super();
		this.logname = logname;
		this.logpass = logpass;
		this.logrole = logrole;
	}
	

}
