package com.jiudian.pojo;

import java.io.Serializable;

public class Tousu implements Serializable {

	private static final long serialVersionUID = 1L;
	private Integer id;// 主键
	private String msg; //投诉信息
	private String tsperson; //投诉人
	private String tstime; //投诉时间
	private String replay; //回复
	private String replaytime; //回复时间

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

	public String getTsperson() {
		return tsperson;
	}

	public void setTsperson(String tsperson) {
		this.tsperson = tsperson;
	}

	public String getTstime() {
		return tstime;
	}

	public void setTstime(String tstime) {
		this.tstime = tstime;
	}

	public String getReplay() {
		return replay;
	}

	public void setReplay(String replay) {
		this.replay = replay;
	}

	public String getReplaytime() {
		return replaytime;
	}

	public void setRepalytime(String replaytime) {
		this.replaytime = replaytime;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

}
