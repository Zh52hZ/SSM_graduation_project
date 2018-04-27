package com.jiudian.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jiudian.mapper.JiudianMapper;
import com.jiudian.pojo.Jiudian;
import com.jiudian.service.JiudianService;


 
@Service
public class JiudianServiceImpl implements JiudianService {
	@Autowired
	private JiudianMapper jiudianMapper;


	public List<Jiudian> queryJiudianList(Jiudian jiudian) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		if(jiudian!=null){
			map.put("name", jiudian.getId());
		}
		
		List<Jiudian> getJiudian = jiudianMapper.query(map);
		return getJiudian;
	}

	public int insertJiudian(Jiudian jiudian) throws Exception {
		jiudianMapper.insertJiudian(jiudian);
		return jiudian.getId();
	}

	public int deleteJiudian(int id) throws Exception {
		return jiudianMapper.deleteJiudian(id);
	}

	public int updateJiudian(Jiudian jiudian) throws Exception {
		return jiudianMapper.updateJiudian(jiudian);
	}
	
	public Jiudian queryJiudianById(int id) throws Exception {
		return jiudianMapper.queryJiudianById(id);
	}

 

}
