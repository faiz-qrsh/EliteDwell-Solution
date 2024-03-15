package com.services.home.service.impl;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import com.services.home.service.MailService;

public class MailServiceImpl implements MailService{
	
	public void sentTextMail(String msg, String subject, String mail) {
		String host="smtp.gmail.com";
		Properties properties=System.getProperties();
		properties.put("mail.smtp.host", host);
		properties.put("mail.smtp.port", "465");
		properties.put("mail.smtp.ssl.enable", "true");
		properties.put("mail.smtp.auth", "true");
		Session session=Session.getInstance(properties, new Authenticator() {
			
			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication("mrfaizualquresh@gmail.com", "mgjn xgpv xoku ehoi");
			}
		});
		session.setDebug(true);
		MimeMessage message=new MimeMessage(session);
		try {
			message.setFrom("mrfaizualquresh@gmail.com");
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(mail));
			message.setSubject(subject);
			message.setText(msg);
			Transport.send(message);
		} catch (MessagingException e) {
			e.printStackTrace();
		}
		
	}

}
