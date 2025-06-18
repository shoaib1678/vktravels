package com.shoaib.services;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.shoaib.dao.CommonDao;
import com.shoaib.model.Entry;
import com.shoaib.model.LoginCredentials;
import com.shoaib.utils.AesCryprUtil;
import com.shoaib.utils.Utils;

@Service
public class EntryService {

	@Autowired
	CommonDao commonDao;

	public Map<String, Object> add_entry(Entry entry) {
		Map<String,Object> response = new HashMap<String, Object>();
		try {
			
				Map<String,Object> map1= new HashMap<String, Object>();
				map1.put("mobile_number", entry.getMobile_number());
				List<Entry> data1 = (List<Entry>)commonDao.getDataByMap(map1, new Entry(), null, null, 0, -1);
				if(data1.size() > 0) {
					response.put("status", "Already_Exist");
					response.put("message", "Mobile Number Already Exist!!!");
				}else {
					entry.setStatus("Active");
					entry.setCreatedAt(new Date());
					int i = commonDao.addDataToDb(entry);
					if( i > 0) {
						response.put("status", "Success");
						response.put("message", "Entry Successfully");
					}else {
						response.put("status", "Failed");
						response.put("message", "Something went wrong");
					}
				}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return response;
	}

	public Map<String, Object> get_entry(int start, int length, String search) {
		Map<String, Object> response = new HashMap<String,Object>();
		try {
			Map<String,Object> map = new HashMap<String,Object>();
			if(search != null && !search.isEmpty()) {
				map.put("name", search);
				map.put("mobile_number", search);
				map.put("status", search);
				System.out.println("map="+map);
			}
			List<Entry> list = (List<Entry>) commonDao.getDataByMapSearchAnd(new HashMap<String,Object>(), map, new Entry(), "sno", "desc", start, length);	
			int count = commonDao.getDataByMapSearchAndSize(new HashMap<String,Object>(), map, new Entry(), "sno", "asc");
			
			if(list.size()>0) {
				response.put("data", list);
				response.put("recordsFiltered", count);
				response.put("recordsTotal", count);
				response.put("status", "Success");
			}else {
				response.put("data", new ArrayList<>());
				response.put("recordsFiltered", 0);
				response.put("recordsTotal", 0);
				response.put("status","Failed");
				return response;
			}
		} catch (Exception e) {
			response.put("data", new ArrayList());
			response.put("recordsFiltered", 0);
			response.put("recordsTotal", 0);
			response.put("message", "Internal server Error"+e);
			e.printStackTrace();
			return response;
		}
		return response;
	}
}
