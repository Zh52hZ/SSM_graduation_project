package com.jiudian.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jiudian.mapper.FuwuMapper;
import com.jiudian.pojo.Fuwu;
import com.jiudian.service.FuwuService;


 
@Service
public class FuwuServiceImpl implements FuwuService {
	@Autowired
	private FuwuMapper fuwuMapper;


	public List<Fuwu> queryFuwuList(Fuwu fuwu) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		if(fuwu!=null){
			map.put("name", fuwu.getName());
		}
		
		List<Fuwu> getFuwu = fuwuMapper.query(map);
		return getFuwu;
	}

	public int insertFuwu(Fuwu fuwu) throws Exception {
		fuwuMapper.insertFuwu(fuwu);
		return fuwu.getId();
	}

	public int deleteFuwu(int id) throws Exception {
		return fuwuMapper.deleteFuwu(id);
	}

	public int updateFuwu(Fuwu fuwu) throws Exception {
		return fuwuMapper.updateFuwu(fuwu);
	}
	
	public Fuwu queryFuwuById(int id) throws Exception {
		return fuwuMapper.queryFuwuById(id);
	}

 

}
