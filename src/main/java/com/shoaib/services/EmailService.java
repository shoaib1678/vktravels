package com.shoaib.services;
import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.*;
import javax.activation.*;
import org.springframework.web.multipart.MultipartFile; 
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.time.LocalTime;
import java.time.ZoneId;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.util.ByteArrayDataSource;
import javax.print.attribute.HashAttributeSet;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.shoaib.dao.CommonDao;

@Service
public class EmailService {

	@Autowired
	CommonDao commonDao;

	public Map<String, Object> sendEmailMessage(String to, String subject, String message) {
	    Map<String, Object> response = new HashMap<>();
	    try {
	        final String username = "wigroupservice@gmail.com";
	        final String password = "ritzoqfasmwlyjjw";

	        Properties prop = new Properties();
	        prop.put("mail.smtp.host", "smtp.gmail.com");
	        prop.put("mail.smtp.port", "587");
	        prop.put("mail.smtp.auth", "true");
	        prop.put("mail.smtp.starttls.enable", "true");
	        prop.put("mail.smtp.ssl.trust", "smtp.gmail.com");
	        prop.put("mail.smtp.ssl.protocols", "TLSv1.2");

	        Session session = Session.getInstance(prop, new javax.mail.Authenticator() {
	            protected PasswordAuthentication getPasswordAuthentication() {
	                return new PasswordAuthentication(username, password);
	            }
	        });

	        Message m = new MimeMessage(session);
	        m.setFrom(new InternetAddress(username));
	        m.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
	        m.setSubject(subject);
	        m.setText(message);

	        Transport.send(m);
	        System.out.println("Message Sent Successfully");

	        response.put("status", "Success");
	        response.put("message", "Message sent successfully");

	    } catch (MessagingException e) {
	        e.printStackTrace();
	        response.put("status", "Error");
	        response.put("message", "Failed to send the email: " + e.getMessage());
	    } 

	    return response;
	}


	public Map<String, Object> verifyOtp(String userOtp, String email) {
		// TODO Auto-generated method stub
		return null;
	}

	public Map<String, Object> verify_email_otps(String first_name, String last_name, String email, String dealer_name,
			String licence_number, String phone_number, String address, String city, String state, String zip_code,
			String question, String answer, String otp1, String otp2) {
		// TODO Auto-generated method stub
		return null;
	}

	public Map<String, Object> verifyAndCheckEmail(String email) {
		// TODO Auto-generated method stub
		return null;
	}


	public Map<String, Object> sendEmailMessage_cv(String to, String subject, String messageText, MultipartFile cv) {
	    Map<String, Object> response = new HashMap<>();
	    try {
	        final String username = "wigroupservice@gmail.com";  
	        final String password = "ritzoqfasmwlyjjw";         

	        Properties prop = new Properties();
	        prop.put("mail.smtp.host", "smtp.gmail.com");
	        prop.put("mail.smtp.port", "587");
	        prop.put("mail.smtp.auth", "true");
	        prop.put("mail.smtp.starttls.enable", "true");
	        prop.put("mail.smtp.ssl.trust", "smtp.gmail.com");
	        prop.put("mail.smtp.ssl.protocols", "TLSv1.2");

	        Session session = Session.getInstance(prop, new javax.mail.Authenticator() {
	            protected PasswordAuthentication getPasswordAuthentication() {
	                return new PasswordAuthentication(username, password);
	            }
	        });

	        Message message = new MimeMessage(session);
	        message.setFrom(new InternetAddress(username));
	        message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
	        message.setSubject(subject);

	        MimeBodyPart textBodyPart = new MimeBodyPart();
	        textBodyPart.setText(messageText);  

	        MimeBodyPart attachmentBodyPart = new MimeBodyPart();
	        DataSource source = new ByteArrayDataSource(cv.getBytes(), cv.getContentType());  
	        attachmentBodyPart.setDataHandler(new DataHandler(source));
	        attachmentBodyPart.setFileName(cv.getOriginalFilename());  

	        Multipart multipart = new MimeMultipart();
	        multipart.addBodyPart(textBodyPart);     
	        multipart.addBodyPart(attachmentBodyPart); 

	        message.setContent(multipart);

	        Transport.send(message);
	        System.out.println("Message Sent Successfully");

	        response.put("status", "Success");
	        response.put("message", "Message sent successfully with attachment");

	    } catch (Exception e) {
	        e.printStackTrace();
	        response.put("status", "Error");
	        response.put("message", "Failed to send the email: " + e.getMessage());
	    }

	    return response;
	}


	public Map<String, Object> send_hp_message(String to, String subject, String messageText, MultipartFile manuscript) {
		 Map<String, Object> response = new HashMap<>();
		    try {
		        final String username = "haliconpublication@gmail.com";  
		        final String password = "kmvogxpgizaxpwyp";         

		        Properties prop = new Properties();
		        prop.put("mail.smtp.host", "smtp.gmail.com");
		        prop.put("mail.smtp.port", "587");
		        prop.put("mail.smtp.auth", "true");
		        prop.put("mail.smtp.starttls.enable", "true");
		        prop.put("mail.smtp.ssl.trust", "smtp.gmail.com");
		        prop.put("mail.smtp.ssl.protocols", "TLSv1.2");

		        Session session = Session.getInstance(prop, new javax.mail.Authenticator() {
		            protected PasswordAuthentication getPasswordAuthentication() {
		                return new PasswordAuthentication(username, password);
		            }
		        });

		        Message message = new MimeMessage(session);
		        message.setFrom(new InternetAddress(username));
		        message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
		        message.setSubject(subject);

		        MimeBodyPart textBodyPart = new MimeBodyPart();
		        textBodyPart.setText(messageText);  

		        MimeBodyPart attachmentBodyPart = new MimeBodyPart();
		        DataSource source = new ByteArrayDataSource(manuscript.getBytes(), manuscript.getContentType());  
		        attachmentBodyPart.setDataHandler(new DataHandler(source));
		        attachmentBodyPart.setFileName(manuscript.getOriginalFilename());  

		        Multipart multipart = new MimeMultipart();
		        multipart.addBodyPart(textBodyPart);     
		        multipart.addBodyPart(attachmentBodyPart); 

		        message.setContent(multipart);

		        Transport.send(message);
		        System.out.println("Message Sent Successfully");

		        response.put("status", "Success");
		        response.put("message", "Message sent successfully with attachment");

		    } catch (Exception e) {
		        e.printStackTrace();
		        response.put("status", "Error");
		        response.put("message", "Failed to send the email: " + e.getMessage());
		    }

		    return response;
	}
	
}
