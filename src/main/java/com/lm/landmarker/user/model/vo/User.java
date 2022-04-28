package com.lm.landmarker.user.model.vo;

import java.sql.Date;

public class User implements java.io.Serializable{
	private static final long serialVersionUID = 6251954669990868220L;

	private int user_no;
	private String user_email;
	private String user_name;
	private String user_badge;
	private String login_ok;
	private String user_admin;
	private Date user_date;
	
	public User() {}

	public User(int user_no, String user_email, String user_name, String user_badge, String login_ok, String user_admin,
			Date user_date) {
		super();
		this.user_no = user_no;
		this.user_email = user_email;
		this.user_name = user_name;
		this.user_badge = user_badge;
		this.login_ok = login_ok;
		this.user_admin = user_admin;
		this.user_date = user_date;
	}

	public int getUser_no() {
		return user_no;
	}

	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}

	public String getUser_email() {
		return user_email;
	}

	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getUser_badge() {
		return user_badge;
	}

	public void setUser_badge(String user_badge) {
		this.user_badge = user_badge;
	}

	public String getLogin_ok() {
		return login_ok;
	}

	public void setLogin_ok(String login_ok) {
		this.login_ok = login_ok;
	}

	public String getAdmin() {
		return user_admin;
	}

	public void setAdmin(String admin) {
		this.user_admin = admin;
	}

	public Date getUser_date() {
		return user_date;
	}

	public void setUser_date(Date user_date) {
		this.user_date = user_date;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "User [user_no=" + user_no + ", user_email=" + user_email + ", user_name=" + user_name + ", user_badge="
				+ user_badge + ", login_ok=" + login_ok + ", admin=" + user_admin + ", user_date=" + user_date + "]";
	}
}
