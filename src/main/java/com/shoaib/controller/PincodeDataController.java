package com.shoaib.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;

import com.google.gson.Gson;
import com.shoaib.model.PincodeData;

@Controller
public class PincodeDataController {

	@RequestMapping(value = "/getdatafrompincode")
	public ResponseEntity<Map<String, Object>> getdatafrompincode(HttpServletRequest request) {
		Map<String, Object> response = new HashMap<String, Object>();
		String pincode = request.getParameter("pincode");
		String uri = "http://www.postalpincode.in/api/pincode/" + pincode;
		RestTemplate restTemplate = new RestTemplate();
		String resultdata = restTemplate.getForObject(uri, String.class);
		System.out.println(resultdata);
		Gson gson = new Gson();
		PincodeData result = gson.fromJson(resultdata, PincodeData.class);

		if (result.getStatus().equalsIgnoreCase("success")) {
			response.put("status", "success");
			for (int i = 0; i < 1; i++) {
				response.put("country", result.getPostOffice().get(i).getCountry());
				response.put("state", result.getPostOffice().get(i).getState());
				response.put("district", result.getPostOffice().get(i).getDistrict());
				response.put("division", result.getPostOffice().get(i).getDivision());
				response.put("circle", result.getPostOffice().get(i).getCircle());
				response.put("taluk", result.getPostOffice().get(i).getTaluk());
				response.put("region", result.getPostOffice().get(i).getRegion());
			}

			response.put("message", "No Data Found");
		} else {
			response.put("status", "error");
			response.put("message", "No Data Found");
		}
		return new ResponseEntity<Map<String, Object>>(response, HttpStatus.OK);
	}
	
}
