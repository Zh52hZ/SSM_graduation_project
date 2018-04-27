package com.jiudian.mapper;

import java.util.List;
import java.util.Map;

import com.jiudian.pojo.Kefang;

 
public interface KefangMapper {
	public List<Kefang> findKefangList();
	
	public List<Kefang> query(Map<String,Object> inputParam);
	
	public int insertKefang(Kefang kefang);
	
	public int deleteKefang(int id);
	
	public int updateKefang(Kefang kefang);
	
	public Kefang queryKefangById(int id);
}
