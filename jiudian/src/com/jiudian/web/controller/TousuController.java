package com.jiudian.web.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jiudian.pojo.Tousu;
import com.jiudian.service.TousuService;
 
@Controller
@RequestMapping("/tousu")
public class TousuController {
	@Autowired
	private TousuService tousuService;
	
	@RequestMapping(value="/list")
	public String list(Tousu tousu,HttpServletRequest request) throws Exception{
		List<Tousu> list = tousuService.queryTousuList(tousu);
		request.setAttribute("tousuList", list);
		return "/tousu/tousulist.jsp";
	}
	
	@RequestMapping(value="/addtousu")
	public String addtousu(Tousu tousu,HttpServletRequest request) throws Exception{
		tousuService.insertTousu(tousu);
		tousu=new Tousu();
		return this.list(tousu, request);
	}
	
	@RequestMapping(value="/toupdatetousu")
	public String toupdatetousu(int id,HttpServletRequest request) throws Exception{
		Tousu tousu=tousuService.queryTousuById(id);
		request.setAttribute("tousu", tousu);
		return "/tousu/tousuupdate.jsp";
	}
	
	@RequestMapping(value="/deletetousu")
	public String deletetousu(int id,HttpServletRequest request) throws Exception{
		tousuService.deleteTousu(id);
		return "/tousu/list";
	}
	
	@RequestMapping(value="/updatetousu")
	public String updatetousu(Tousu tousu,HttpServletRequest request) throws Exception{
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String time = format.format(new Date());
		Tousu old=tousuService.queryTousuById(tousu.getId());
		old.setReplay(tousu.getReplay());
		old.setRepalytime(time);
		tousuService.updateTousu(old);
		tousu=new Tousu();
		return this.list(tousu, request);
	}
	
}
