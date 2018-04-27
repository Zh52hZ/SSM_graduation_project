package com.jiudian.mapper;

import java.util.List;
import java.util.Map;
import com.jiudian.pojo.Huodong;
 
public interface HuodongMapper {
	public List<Huodong> findHuodongList();
	
	public List<Huodong> query(Map<String,Object> inputParam);
	
	public int insertHuodong(Huodong huodong);
	
	public int deleteHuodong(int id);
	
	public int updateHuodong(Huodong huodong);
	
	public Huodong queryHuodongById(int id);
}
