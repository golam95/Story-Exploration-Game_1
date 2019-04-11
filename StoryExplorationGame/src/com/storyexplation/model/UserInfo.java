package com.storyexplation.model;

public class UserInfo {
	private int user_id;
	private String user_name;
	private String user_completemodule;
	private String selecttype;

	public UserInfo(int user_id, String user_name, String user_completemodule, String selecttype) {
		super();
		this.user_id = user_id;
		this.user_name = user_name;
		this.user_completemodule = user_completemodule;
		this.selecttype = selecttype;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getUser_completemodule() {
		return user_completemodule;
	}

	public void setUser_completemodule(String user_completemodule) {
		this.user_completemodule = user_completemodule;
	}

	public String getSelecttype() {
		return selecttype;
	}

	public void setSelecttype(String selecttype) {
		this.selecttype = selecttype;
	}

}
