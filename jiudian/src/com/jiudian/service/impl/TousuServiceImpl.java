package com.jiudian.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jiudian.mapper.TousuMapper;
import com.jiudian.pojo.Tousu;
import com.jiudian.service.TousuService;


 
@Service
public class TousuServiceImpl implements TousuService {
	@Autowired
	private TousuMapper tousuMapper;

	public List<Tousu> queryTousuList(Tousu tousu) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		if(tousu!=null){
			map.put("tsperson", tousu.getTsperson());
		}
		List<Tousu> getTousu = tousuMapper.query(map);
		return getTousu;
	}

	public int insertTousu(Tousu tousu) throws Exception {
		tousuMapper.insertTousu(tousu);
		return tousu.getId();
	}

	public int deleteTousu(int id) throws Exception {
		return tousuMapper.deleteTousu(id);
	}

	public int updateTousu(Tousu tousu) throws Exception {
		return tousuMapper.updateTousu(tousu);
	}
	
	public Tousu queryTousuById(int id) throws Exception {
		return tousuMapper.queryTousuById(id);
	}

 

}
