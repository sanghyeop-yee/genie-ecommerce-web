package com.genie.myapp.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.genie.myapp.dao.CertDAO;

@Service
public class CertServiceImpl implements CertService {
    
    @Autowired
	private JavaMailSender mailSender;
	
	@Inject
	CertDAO cdao;

	
	@Override
	public void sendUserId(String user_email, List<String> user_name) {
		SimpleMailMessage simpleMailMessage = new  SimpleMailMessage();
		simpleMailMessage.setTo(user_email);
		simpleMailMessage.setSubject("아이디 찾기");
		
		StringBuffer sb = new StringBuffer();
		sb.append("가입하신 아이디는");
		sb.append(System.lineSeparator());
		
		for(int i=0;i<user_name.size()-1;i++) {
			sb.append(user_name.get(i));
			sb.append(System.lineSeparator());
		}
		sb.append(user_name.get(user_name.size()-1)).append("입니다");
		
		simpleMailMessage.setText(sb.toString());
		
		
		new Thread(new Runnable() {
			public void run() {
				mailSender.send(simpleMailMessage);
			}
		}).start();
	}

	@Override
    public boolean emailCheck(String user_name, String user_email) {
        Map<String, Object> map = new HashMap<>();
        map.put("user_name", user_name);
        map.put("user_email", user_email);
        String result = cdao.emailCheck(map);
        if("1".equals(result)) {
            return true;
        }
        return false;
	}

	@Override
	public void sendAuthNum(String user_email, String authNum) {
		SimpleMailMessage simpleMailMessage = new  SimpleMailMessage();
		simpleMailMessage.setTo(user_email);
		simpleMailMessage.setSubject("비밀번호 찾기 인증번호");
		
		String text = "인증번호는 " + authNum + "입니다";
		
		simpleMailMessage.setText(text);
		new Thread(new Runnable() {
			public void run() {
				mailSender.send(simpleMailMessage);
			}
		}).start();
		
	}

	@Override
	public List<String> FindId(String user_email) {
		return cdao.FindId(user_email);
	}

}
