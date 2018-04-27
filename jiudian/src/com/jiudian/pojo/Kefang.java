package com.jiudian.pojo;

import java.io.Serializable;

import com.jiudian.util.HtmlSplit;

public class Kefang implements Serializable {

	private static final long serialVersionUID = 1L;
	private Integer id;// 主键
	private String name;
	private String type;
	private String msg;
	private String pic;
	private String money;
	private String fujian;

	private String mss;

	private int num;
	private int ydsl;

	public String getMoney() {
		return money;
	}

	public void setMoney(String money) {
		this.money = money;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public void setMss(String mss) {
		this.mss = mss;
	}

	public int getYdsl() {
		return ydsl;
	}

	public void setYdsl(int ydsl) {
		this.ydsl = ydsl;
	}

	public String getMss() {
		if (msg != null && !msg.equals("")) {
			mss = HtmlSplit.delHTMLTag(msg);
		}
		return mss;
	}

	public String getFujian() {
		return fujian;
	}

	public void setFujian(String fujian) {
		this.fujian = fujian;
	}

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

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getPic() {
		return pic;
	}

	public void setPic(String pic) {
		this.pic = pic;
	}

}
