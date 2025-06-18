package com.shoaib.services;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.mail.Multipart;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.shoaib.dao.CommonDao;
import com.shoaib.model.Enquiry;
import com.shoaib.utils.Utils;

@Service
public class EnquiryService {

	@Autowired
	CommonDao commonDao;
	@Autowired
	EmailService emailService;

	public Map<String, Object> add_enquiry(Enquiry enquiry) {
		Map<String,Object> response = new HashMap<String, Object>();
		try {
			if(enquiry.getSno() > 0) {
				Map<String, Object> search = new HashMap<String, Object>();
				search.put("sno", enquiry.getSno());
				ObjectMapper mapObject = new ObjectMapper();
				Map<String, Object> mapObj = mapObject.convertValue(enquiry, Map.class);
				int id = commonDao.updateMethodForAll(mapObj, "Enquiry", search);
				if(id> 0) {
					response.put("status", "Success");
					response.put("message", "Enqiry Completed Successfully");
				}
			}else {
				enquiry.setStatus("Pending");
				enquiry.setCreatedAt(new Date());
				int i = commonDao.addDataToDb(enquiry);
				if(i > 0) {
					String email = "wigroupservice@gmail.com";
					String subject = "New Contact us Enquiry";
					String message = "Name: " + enquiry.getName() + "\n" +
							 "Mobile Number: " +enquiry.getPhone_number()  + "\n" +
			                 "Subject: " + enquiry.getSubject()+"\n"+
			                 "Message: " + enquiry.getMessage();
					emailService.sendEmailMessage(email, subject, message);
					response.put("status", "Success");
					response.put("message", "Enquiry Raised Successfully");
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

	public Map<String, Object> get_enquiry(int start, int length, String search) {
		Map<String,Object> response = new HashMap<String, Object>();
		try {
			Map<String,Object> map = new HashMap<String,Object>();
			Map<String,Object> or_map = new HashMap<String,Object>();
			if(search != null && !search.isEmpty()) {
				or_map.put("name", search);
				or_map.put("mobile_number", search);
				or_map.put("status", search);
			}
			
			List<Enquiry> list = (List<Enquiry>) commonDao.getDataByMapSearchAnd(new HashMap<String,Object>(),or_map, new Enquiry(), "sno", "desc", start, length);	
			int count = commonDao.getDataByMapSearchAndSize(new HashMap<String,Object>(), or_map, new Enquiry(), "sno", "desc");
			if(list.size()>0) {
				response.put("data", list);
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

	public Map<String, Object> addEnquiryWithCV(Enquiry enquiry, MultipartFile cv) {
		Map<String,Object> response = new HashMap<String, Object>();
		try {
			Utils utils = new Utils();
			String img = utils.uploadImage(cv);
				//enquiry.setCv(img);
				enquiry.setStatus("Pending");
				enquiry.setCreatedAt(new Date());
				int i = commonDao.addDataToDb(enquiry);
				if(i > 0) {
					String email = "wigroupservice@gmail.com";
					String subject = "New Enquiry from Website";
					String message = "Name: " + enquiry.getName() + "\n" +
							 "Mobile Number: " +enquiry.getPhone_number()  + "\n" +
			                 "Enquiry Details: " + enquiry.getMessage();
					emailService.sendEmailMessage_cv(email, subject, message,cv);
					response.put("status", "Success");
					response.put("message", "Enquiry Raised Successfully");
				}else {
					response.put("status", "Failed");
					response.put("message", "Something went wrong");
				}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return response;
	}

	public Map<String, Object> send_manuscript(String name, String email, MultipartFile manuscript) {
		Map<String,Object> response = new HashMap<String, Object>();
		try {
					String eml = "haliconpublication@gmail.com";
					String subject = "New Manuscript from Website";
					String message = "Name: " + name + "\n" +
							 "Email: " +email;
			                System.out.println("message="+message);
					emailService.send_hp_message(eml, subject, message,manuscript);
					response.put("status", "Success");
					
				
		} catch (Exception e) {
			e.printStackTrace();
		}
		return response;
	}

	public Map<String, Object> send_enquiry(String name, String email, String phone, String messag, MultipartFile file) {
		Map<String,Object> response = new HashMap<String, Object>();
		try {
					String eml = "haliconpublication@gmail.com";
					String subject = "New Enquiry from Website";
					String message = "Name: " + name + "\n" +
							"Email: " + email + "\n" +
							"Mobile Number: " + phone + "\n" +
							 "Message: " +messag;
			                System.out.println("message="+message);
					emailService.send_hp_message(eml, subject, message,file);
					response.put("status", "Success");
					
				
		} catch (Exception e) {
			e.printStackTrace();
		}
		return response;
	}

	public Map<String, Object> send_contact(String name, String email, String phone, String sub, String messag,
			MultipartFile file) {
		Map<String,Object> response = new HashMap<String, Object>();
		try {
					String eml = "haliconpublication@gmail.com";
					String subject = sub;
					String message = "Name: " + name + "\n" +
							"Email: " + email + "\n" +
							"Mpbile Number: " + phone + "\n" +
							 "Message: " +messag;
			                System.out.println("message="+message);
					emailService.send_hp_message(eml, subject, message,file);
					response.put("status", "Success");
				
		} catch (Exception e) {
			e.printStackTrace();
		}
		return response;
	}
}
