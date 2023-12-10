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
import com.shoaib.model.Branch;
import com.shoaib.model.LoginCredentials;
import com.shoaib.utils.AesCryprUtil;
import com.shoaib.utils.Utils;

@Service
public class BranchService {

	@Autowired
	CommonDao commonDao;

	public Map<String, Object> add_branch(Branch branch) {
		Map<String,Object> response = new HashMap<String, Object>();
		try {
			Map<String,Object> map= new HashMap<String, Object>();
			map.put("sno", branch.getSno());
			List<Branch> data = (List<Branch>)commonDao.getDataByMap(map, new Branch(), null, null, 0, -1);
			if(data.size() > 0) {
				Map<String, Object> search = new HashMap<String, Object>();
				search.put("sno", branch.getSno());
				ObjectMapper mapObject = new ObjectMapper();
				Map<String, Object> mapObj = mapObject.convertValue(branch, Map.class);
				int id = commonDao.updateMethodForAll(mapObj, "Branch", search);
				if(id > 0) {
					Map<String,Object> map2 = new HashMap<String,Object>();
					map2.put("user_id", branch.getSno());
					List<LoginCredentials> login = (List<LoginCredentials>)commonDao.getDataByMap(map2, new LoginCredentials(), null, null, 0, -1);
					login.get(0).setEmail(branch.getEmail());
					login.get(0).setUser_name(branch.getBranch_head());
					commonDao.updateDataToDb(login.get(0));
					response.put("status", "Success");
					response.put("message", "Branch Details Updated Successfully");
					
				}
			}else {
				Map<String,Object> map1= new HashMap<String, Object>();
				map1.put("email", branch.getEmail());
				map1.put("email", branch.getEmail());
				List<Branch> data1 = (List<Branch>)commonDao.getDataByMap(map1, new Branch(), null, null, 0, -1);
				if(data1.size() > 0) {
					response.put("status", "Already_Exist");
					response.put("message", "Email Or Contact Number Already Exist!!!");
				}else {
					branch.setStatus("Deactive");
					branch.setCreatedAt(new Date());
					int i = commonDao.addDataToDb(branch);
					if( i > 0) {
						LoginCredentials loginCredentials = new LoginCredentials();
						AesCryprUtil aesCryprUtil = new AesCryprUtil();
						String password = aesCryprUtil.encrypt(Utils.generateRandomPassword(10));
						loginCredentials.setEmail(branch.getEmail());
						loginCredentials.setUser_name(branch.getBranch_head());
						loginCredentials.setUser_id(i);
						loginCredentials.setPassword(password);
						loginCredentials.setUserType("Branch_Admin");
						loginCredentials.setStatus("Deactive");
						commonDao.addDataToDb(loginCredentials);
						loginCredentials.setCreatedAt(new Date());
						response.put("status", "Success");
						response.put("message", "Branch Added Successfully");
					}else {
						response.put("status", "Failed");
						response.put("message", "Something went wrong");
					}
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return response;
	}

	public Map<String, Object> get_branch(int start, int length) {
		Map<String, Object> response = new HashMap<String, Object>();
		try {
			Map<String, Object> map = new HashMap<String,Object>();
			List<Branch> data = (List<Branch>) commonDao.getDataByMap(map, new Branch(), null, null, start, length);
			int count = commonDao.getDataByMapSize(map, new Branch(), null, null, 0, -1);
			System.out.println(data.size() + "asdasd");
			if (data.size() > 0) {
				for(Branch b: data) {
					Map<String,Object> map1 = new HashMap<String, Object>();
					map1.put("user_id", b.getSno());
					List<LoginCredentials> login = (List<LoginCredentials>)commonDao.getDataByMap(map1, new LoginCredentials(), null, null, 0, -1);
					AesCryprUtil aesCryprUtil	= new AesCryprUtil();
					b.setPassword(aesCryprUtil.decrypt(login.get(0).getPassword()));
				}
				
				System.out.println(data.size());
				response.put("status", "Success");
				response.put("message", "Data Fetched Successfully");
				response.put("data", data);
				response.put("recordsFiltered", count);
				response.put("recordsTotal", count);

			} else {
				response.put("status", "No_Content");
				response.put("message", "Data Fetched Successfully");
				response.put("data", new ArrayList<>());
				response.put("recordsFiltered", count);
				response.put("recordsTotal",count);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return response;
	}
	
}
