package controller;

import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import dao.BoardDBMybatis;
import dao.MemberDBMybatis;
//import member.MemDBMybatis;

@Controller
@RequestMapping("/member")
public class MemberController{

	MemberDBMybatis dbPro = MemberDBMybatis.getInstance();
	
	
	//�α��� ���� ó��, ������ �̵�
	@RequestMapping(value="/loginDb", method=RequestMethod.POST)
	public String loginDb(Model model,HttpSession session,String id, String pw) {
		//�α���üũ
		int pwcheck = dbPro.login(id, pw);
		String name = dbPro.getname(id);
		session.setAttribute("name", name);
		session.setAttribute("id", id);
		model.addAttribute("pwcheck",pwcheck);		
		
		if(id.equals("admin") && pwcheck==1) {
			return "common/admin";  //jsp ������ ��������.
		}else
		return  "loginDb"; 
	}
	
	
	//������ ��� - ���� ���
	@RequestMapping("/regEmployee")
	public String regEmployee() {
		
		return "member/regEmployee";
	}
	
	
	
}

