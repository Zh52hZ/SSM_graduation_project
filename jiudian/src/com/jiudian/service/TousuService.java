package com.jiudian.service;

import java.util.List;

import com.jiudian.pojo.Tousu;
 
public interface TousuService{
	public List<Tousu> queryTousuList(Tousu tousu) throws Exception;
	
	public int insertTousu(Tousu tousu) throws Exception ;
	
	public int deleteTousu(int id) throws Exception ;
	
	public int updateTousu(Tousu tousu) throws Exception ;
	
	public Tousu queryTousuById(int id) throws Exception ;
}
