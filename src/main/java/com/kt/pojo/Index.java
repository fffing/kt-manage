package com.kt.pojo;

import java.io.Serializable;

public class Index implements Serializable{
	private String msg;
	private Integer status;
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	
}
