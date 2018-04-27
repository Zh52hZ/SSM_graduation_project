package com.jiudian.service;

import java.util.List;

import com.jiudian.pojo.Dingdan;

 
public interface DingdanService{
	public List<Dingdan> queryDingdanList(Dingdan dingdan) throws Exception;
 
	public int insertDingdan(Dingdan dingdan) throws Exception ;
	
	public int deleteDingdan(int id) throws Exception ;
	
	public int updateDingdan(Dingdan dingdan) throws Exception ;
	
	public Dingdan queryDingdanById(int id) throws Exception ;
	
	public void qxDingdan(Dingdan dingdan) throws Exception ;
}
