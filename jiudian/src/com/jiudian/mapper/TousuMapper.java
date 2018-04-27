package com.jiudian.mapper;

import java.util.List;
import java.util.Map;

import com.jiudian.pojo.Tousu;

 
public interface TousuMapper {
	public List<Tousu> findTousuList();
	
	public List<Tousu> query(Map<String,Object> inputParam);
	
	public int insertTousu(Tousu tousu);
	
	public int deleteTousu(int id);
	
	public int updateTousu(Tousu tousu);
	
	public Tousu queryTousuById(int id);
}
