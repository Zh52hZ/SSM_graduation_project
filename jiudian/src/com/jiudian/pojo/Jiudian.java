package com.jiudian.pojo;

import java.io.Serializable;

 
public class Jiudian implements Serializable{
 
 
	private static final long serialVersionUID = 1L;
	private Integer id;//主键
	private String msg;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
	
    
}
