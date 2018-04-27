package com.jiudian.pojo;

import java.io.Serializable;

import com.jiudian.util.HtmlSplit;

public class Fuwu implements Serializable {

	private static final long serialVersionUID = 1L;
	private Integer id;// 主键
	private String name;
	private String msg;
	private String money;
	private String pic;
	private String fujian;
	private String mss;
	private int num;

	
	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getMss() {
		if (msg != null && !msg.equals("")) {
			mss = HtmlSplit.delHTMLTag(msg);
		}
		return mss;
	}

	public void setMss(String mss) {
		this.mss = mss;
	}

	public String getFujian() {
		return fujian;
	}

	public void setFujian(String fujian) {
		this.fujian = fujian;
	}

	public String getPic() {
		return pic;
	}

	public void setPic(String pic) {
		this.pic = pic;
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

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public String getMoney() {
		return money;
	}

	public void setMoney(String money) {
		this.money = money;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	

}
