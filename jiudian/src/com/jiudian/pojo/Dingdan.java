package com.jiudian.pojo;

import java.io.Serializable;

public class Dingdan implements Serializable {

	private static final long serialVersionUID = 1L;
	private Integer id;// 主键
	private int bid;
	private int type; // 1 客房 2 其他服务
	private int uid;
	private String money;
	private String time;
	private String name;
	private String state;
	private String uname;
	private String rzrq;
	private String lkrq;

	public String getLkrq() {
		return lkrq;
	}

	public void setLkrq(String lkrq) {
		this.lkrq = lkrq;
	}

	public String getRzrq() {
		return rzrq;
	}

	public void setRzrq(String rzrq) {
		this.rzrq = rzrq;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public int getBid() {
		return bid;
	}

	public void setBid(int bid) {
		this.bid = bid;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}


	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getMoney() {
		return money;
	}

	public void setMoney(String money) {
		this.money = money;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	
}
