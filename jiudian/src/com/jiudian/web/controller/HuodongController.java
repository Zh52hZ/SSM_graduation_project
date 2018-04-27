package com.jiudian.web.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jiudian.pojo.Huodong;
import com.jiudian.service.HuodongService;
 
@Controller //标注控制层组件
@RequestMapping("/huodong") //用来处理请求地址映射的
public class HuodongController {
	@Autowired
	private HuodongService huodongService;
	
	//查询所有活动
	@RequestMapping(value="/list")
	public String list(Huodong huodong,HttpServletRequest request) throws Exception{
		List<Huodong> list = huodongService.queryHuodongList(huodong);
		request.setAttribute("huodongList", list);
		return "/huodong/huodonglist.jsp";
	}
	
	//增加活动
	@RequestMapping(value="/addhuodong")
	public String addhuodong(Huodong huodong,HttpServletRequest request) throws Exception{
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		String time = format.format(new Date());
		huodong.setTime(time);
		huodongService.insertHuodong(huodong);
		huodong=new Huodong();
		return this.list(huodong, request);
	}
	
	//更新活动信息前 查询该活动信息
	@RequestMapping(value="/toupdatehuodong")
	public String toupdatehuodong(int id,HttpServletRequest request) throws Exception{
		Huodong huodong=huodongService.queryHuodongById(id);
		request.setAttribute("huodong", huodong);
		return "/huodong/huodongupdate.jsp";
	}
	
	//删除活动
	@RequestMapping(value="/deletehuodong")
	public String deletehuodong(int id,HttpServletRequest request) throws Exception{
		huodongService.deleteHuodong(id);
		return "/huodong/list";
	}
	
	//更新活动
	@RequestMapping(value="/updatehuodong")
	public String updatehuodong(Huodong huodong,HttpServletRequest request) throws Exception{
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		String time = format.format(new Date());
		huodong.setTime(time);
		huodongService.updateHuodong(huodong);
		huodong=new Huodong();
		return this.list(huodong, request);
	}
}

