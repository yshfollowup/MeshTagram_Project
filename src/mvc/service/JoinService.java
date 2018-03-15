package mvc.service;

import java.util.*;

import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMailMessage;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

@Service
public class JoinService {

	/*
		특정 이메일 주소로 인증키를 보내는 기능을 만들꺼임.
		java mail api를 쓰면 메일 보낼수 있음
	*/
	 
	@Autowired
	JavaMailSender sender;
	
	public Map sendAuthKey(String email) {

		System.out.println("email:"+email+"받았다.");
		String[] uuids = UUID.randomUUID().toString().split("-");
		String key= uuids[0]+"-"+uuids[1];
		Map map=new LinkedHashMap<>();
		map.put("key", key);

		MimeMessage message= sender.createMimeMessage();
		try {
			message.addRecipients(RecipientType.TO, email);
			message.setSubject("인증키입니다.");
			String text="<h3>인증키</h3>";
			text+="<p>전송받은 인증키 <a href=\"http://localhost/account/check.do?key="+key+"\">"+key+"</a>를 입력해주세요.";
			//message.setText(text, "UTF-8");
			
			message.setContent(text, "text/html; charset= UTF-8");
			sender.send(message);
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return map; 
	}
}
