package com.jiudian.mapper;

import java.util.List;
import java.util.Map;

import com.jiudian.pojo.Dingdan;

public interface DingdanMapper {
	public List<Dingdan> findDingdanList();
	
	public List<Dingdan> query(Map<String,Object> inputParam);
	
	public int insertDingdan(Dingdan dingdan);
	
	public int deleteDingdan(int id);
	
	public int updateDingdan(Dingdan dingdan);
	
	public Dingdan queryDingdanById(int id);
	
	public void qxDingdan(Dingdan dingdan);
}
