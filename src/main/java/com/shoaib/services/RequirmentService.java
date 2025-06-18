package com.shoaib.services;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.shoaib.dao.CommonDao;
import com.shoaib.model.Requirements;
import com.shoaib.utils.Utils;

@Service
public class RequirmentService {

	@Autowired
	CommonDao commonDao;

	public Map<String, Object> add_requiremnet(Requirements requirements, MultipartFile image) {
		Map<String,Object> response = new HashMap<String, Object>();
		try {
			Utils utils = new Utils();
			if(requirements.getSno() >0) {
				Map<String,Object> map = new HashMap<String, Object>();
				map.put("sno", requirements.getSno());
				List<Requirements> req = (List<Requirements>)commonDao.getDataByMap(map, new Requirements(), null, null, 0, -1);
				if(image != null && !image.isEmpty()) {
					String img = utils.uploadImage(image);
					req.get(0).setImage(img);
				}
				req.get(0).setCompany_name(requirements.getCompany_name());
				req.get(0).setInterview_date(requirements.getInterview_date());
				req.get(0).setType(requirements.getType());
				req.get(0).setStatus("Active");
				commonDao.updateDataToDb(req.get(0));
				response.put("status","Success");
				response.put("message", "Requirement Update Successfully");
				
			}else {
				String img = utils.uploadImage(image);
				requirements.setImage(img);
				requirements.setStatus("Active");
				requirements.setCreatedAt(new Date());
				int i= commonDao.addDataToDb(requirements);
				if(i > 0) {
					response.put("status","Success");
					response.put("message", "Requirement Added Successfully");
				}else {
					response.put("status","Failure");
					response.put("message", "Something went wrong");
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
			response.put("status","Failed");
			response.put("message", "Something Went Wrong " +e);
		}
		return response;
	}

	public Map<String, Object> get_requirement(int start, int length, String search) {
		Map<String, Object> response = new HashMap<String,Object>();
		try {
			Map<String,Object> map3 = new HashMap<String,Object>();
			if(search != null && !search.isEmpty()) {
				map3.put("company_name", search);
				map3.put("type", search);
			}
			List<Requirements> data = (List<Requirements>) commonDao.getDataByMapSearchAnd(new HashMap<String,Object>(),map3, new Requirements(), "sno", "desc", start, length);
			int count = commonDao.getDataByMapSearchAndSize(new HashMap<String,Object>(),map3, new Requirements(), "sno", "asc");
			if (data.size() >0) {
				response.put("data", data);
				response.put("recordsFiltered", count);
				response.put("recordsTotal", count);
				response.put("status", "Success");
			}else {
				response.put("data", new ArrayList());
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

	public Map<String, Object> delete_req(String sno) {
		Map<String, Object> response = new HashMap<String,Object>();
		try {
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("sno", Integer.parseInt(sno));
			Utils utils = new Utils();
			List<Requirements> data = (List<Requirements>) commonDao.getDataByMap(map, new Requirements(), null, null, 0, -1);
			utils.deleteImage(data.get(0).getImage());
			commonDao.delete(new Requirements(), sno);
			response.put("status","Success");
			response.put("message", "Requirments Deleted Successfully");
		} catch (Exception e) {
			e.printStackTrace();
			response.put("status","Failed");
			response.put("message", "Something Went Wrong " +e);
		}
		return response;
	}
}
