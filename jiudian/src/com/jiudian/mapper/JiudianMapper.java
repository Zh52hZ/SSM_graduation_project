package com.jiudian.mapper;

import java.util.List;
import java.util.Map;

import com.jiudian.pojo.Jiudian;


 
public interface JiudianMapper {
	public List<Jiudian> findJiudianList();
	
	public List<Jiudian> query(Map<String,Object> inputParam);
	
	public int insertJiudian(Jiudian jiudian);
	
	public int deleteJiudian(int id);
	
	public int updateJiudian(Jiudian jiudian);
	
	public Jiudian queryJiudianById(int id);
}
