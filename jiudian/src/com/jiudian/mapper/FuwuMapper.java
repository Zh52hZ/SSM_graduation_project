package com.jiudian.mapper;

import java.util.List;
import java.util.Map;

import com.jiudian.pojo.Fuwu;

public interface FuwuMapper {
	public List<Fuwu> findFuwuList();
	
	public List<Fuwu> query(Map<String,Object> inputParam);
	
	public int insertFuwu(Fuwu fuwu);
	
	public int deleteFuwu(int id);
	
	public int updateFuwu(Fuwu fuwu);
	
	public Fuwu queryFuwuById(int id);
}
