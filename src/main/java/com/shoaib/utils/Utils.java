package com.shoaib.utils;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.SecureRandom;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.IOUtils;
import org.springframework.http.CacheControl;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.multipart.MultipartFile;


public class Utils {
	
	//public static String staticimages = "C:/temp/";
	public static String staticimages = "/var/lib/tomcat9/webapps/files/";
	
	
	public static String adminkey = "CbddmBz6lmP2766";

	DateFormat dateFormat = new SimpleDateFormat("yyyyMMddHHmmss");

	public String uploadImage(MultipartFile file) {
	String str = "";
	if (!file.isEmpty()) {
	str = file.getOriginalFilename();
	System.out.println(str);
	String[] str1 = str.split("\\.");
	int length=str1.length;
	str = str1[0] + dateFormat.format(new Date()) + "." + str1[length-1];
	str = str.trim();

	try {
	System.out.println(file.getBytes());
	byte[] bytes = file.getBytes();
	File serverFile = new File(Utils.staticimages + str);
	BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(serverFile));
	stream.write(bytes);
	stream.close();
	} catch (Exception e) {
	System.out.println(e);
	}
	}
	return str;
	}
	
	// This method is used for generating password
		public static String generateRandomPassword(int len) {
			// ASCII range � alphanumeric (0-9, a-z, A-Z)
			final String chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";

			SecureRandom random = new SecureRandom();
			StringBuilder sb = new StringBuilder();

			// each iteration of the loop randomly chooses a character from the given
			// ASCII range and appends it to the `StringBuilder` instance

			for (int i = 0; i < len; i++) {
				int randomIndex = random.nextInt(chars.length());
				sb.append(chars.charAt(randomIndex));
			}

			return sb.toString();
		}
		
		public  Map<String, Object> uploadFile(MultipartFile document
				) {
			Map<String, Object> response = new HashMap<String, Object>();
			try {
				String str = "";
				String path = Utils.staticimages + "/";
				File directory = new File(path);
				if (!directory.exists()) {
					directory.mkdir();
					if (!document.isEmpty()) {
						str = document.getOriginalFilename();
						String[] str1 = str.split("\\.");
						str = str1[0] + dateFormat.format(new Date()) + "." + str1[1];
						str = str.trim();
						try {
							byte[] bytes = document.getBytes();
							File serverFile = new File(path + str);
							BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(serverFile));
							stream.write(bytes);
							stream.close();
							response.put("status", "success");
							response.put("message", "Image Uploaded Successfully");
							response.put("filename", str);
							return response;
						} catch (Exception e) {
							System.out.println(e);
							response.put("status", "failed");
							response.put("message", "Something Went Wrong");
							return response;
						}
					}
				} else {
					/*
					 * if (filename != null && !filename.isEmpty()) { File file = new File(path +
					 * filename); if (file.exists()) { file.delete(); } }
					 */
					if (!document.isEmpty()) {
						str = document.getOriginalFilename();
						String[] str1 = str.split("\\.");
						str = str1[0] + dateFormat.format(new Date()) + "." + str1[1];
						str = str.trim();
						try {
							byte[] bytes = document.getBytes();
							File serverFile = new File(path + str);
							BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(serverFile));
							stream.write(bytes);
							stream.close();
							response.put("status", "success");
							response.put("message", "Image Uploaded Successfully");
							response.put("filename", str);
							return response;
						} catch (Exception e) {
							System.out.println(e);
							response.put("status", "failed");
							response.put("message", "Something Went Wrong");
							return response;
						}
					}
				}
				response.put("status", "failed");
				response.put("message", "Something Went Wrong");
				return response;
			} catch (Exception e) {
				e.printStackTrace();
				response.put("status", "failed");
				response.put("message", "Something Went Wrong");
				return response;
			}
		}
		
		public static ResponseEntity<byte[]> displayAssociateImage(HttpServletRequest request) throws IOException {
			String url = request.getParameter("url");
			HttpHeaders headers = new HttpHeaders();
			InputStream in = null;
			try {
				in = new FileInputStream(Utils.staticimages + url);
				System.out.println(Utils.staticimages + url);
			} catch (Exception e) {
				System.out.println(e);
			}
			byte[] media = IOUtils.toByteArray(in);
			headers.setCacheControl(CacheControl.noCache().getHeaderValue());
			ResponseEntity<byte[]> responseEntity = new ResponseEntity(media, headers, HttpStatus.OK);
			return responseEntity;
		}

		
		public  Map<String, Object> uploadFile1(MultipartFile document
				) {
			Map<String, Object> response = new HashMap<String, Object>();
			try {
				String path = Utils.staticimages + "/";
				String fileName = document.getOriginalFilename();
				File destFile = new File(path + fileName);
				document.transferTo(destFile);
				String file = path + fileName;
				response.put("status", "success");
				response.put("filename", file);
				return response;
			} catch (Exception e) {
				e.printStackTrace();
				response.put("status", "failed");
				response.put("message", "Something Went Wrong");
				return response;
			}
		}
		public static boolean deleteImage(String filePath) {
		    if (filePath == null || filePath.isEmpty()) {
		        System.out.println("Invalid file path");
		        return false;
		    }
		    File file = new File(Utils.staticimages + filePath);
		    if (file.exists()) {
		        boolean isDeleted = file.delete();
		        if (isDeleted) {
		            System.out.println("File successfully deleted: " + file.getAbsolutePath());
		        } else {
		            System.out.println("Failed to delete file: " + file.getAbsolutePath());
		        }
		        return isDeleted;
		    } else {
		        System.out.println("File not found: " + file.getAbsolutePath());
		        return false;
		    }
		}


}
