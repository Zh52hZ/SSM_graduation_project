package com.jiudian.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jiudian.mapper.KefangMapper;
import com.jiudian.pojo.Kefang;
import com.jiudian.service.KefangService;


 
@Service
public class KefangServiceImpl implements KefangService {
	@Autowired
	private KefangMapper kefangMapper;

	
	public List<Kefang> queryKefangList(Kefang kefang) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		if(kefang!=null){
			map.put("name", kefang.getName());
		}
		
		List<Kefang> getKefang = kefangMapper.query(map);
		return getKefang;
	}

	public int insertKefang(Kefang kefang) throws Exception {
		kefangMapper.insertKefang(kefang);
		return kefang.getId();
	}

	public int deleteKefang(int id) throws Exception {
		return kefangMapper.deleteKefang(id);
	}

	public int updateKefang(Kefang kefang) throws Exception {
		return kefangMapper.updateKefang(kefang);
	}
	
	public Kefang queryKefangById(int id) throws Exception {
		return kefangMapper.queryKefangById(id);
	}

 

}
