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
	
	
	//로그인 로직 처리, 페이지 이동
	@RequestMapping(value="/loginDb", method=RequestMethod.POST)
	public String loginDb(Model model,HttpSession session,String id, String pw) {
		//로그인체크
		System.out.println("111q1111");
		int pwcheck = dbPro.login(id, pw);
		String name = dbPro.getname(id);
		session.setAttribute("name", name);
		session.setAttribute("id", id);
		model.addAttribute("pwcheck",pwcheck);		
		if(id.equals("admin") && pwcheck==1) {
			return "/common/admin";  //jsp 페이지 만들어야함.
		}else
		return  "loginDb"; 
	}
	
	
	
	
/*	//메인페이지로 이동
	@RequestMapping("/mainBoard")
	public String main(Model model,HttpSession session) {
		String name = (String) session.getAttribute("name");
		
		
		model.addAttribute("name", name);
		return "board/mainBoard";
	}
*/	
	
	
	
}

