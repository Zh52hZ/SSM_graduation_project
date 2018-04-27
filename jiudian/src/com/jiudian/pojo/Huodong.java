package com.jiudian.pojo;

import java.io.Serializable;

public class Huodong implements Serializable {

	private static final long serialVersionUID = 1L;
	private Integer id;  // 主键
	private String name; //活动名
	private String msg;  //活动内容
	private String time; //时间

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
}
