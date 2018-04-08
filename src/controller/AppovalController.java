package controller;

import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.ApprovalDBMybatis;
import model.ApprovalDataBean;

@Controller
@RequestMapping("/approval")
public class AppovalController {
	ApprovalDBMybatis dbPro = ApprovalDBMybatis.getInstance();
	String pageNum = "1";
	
	@ModelAttribute
	public void addAttributes(String pageNum) {
		if(pageNum != null && pageNum != ""){
			this.pageNum = pageNum;}
	}
	
	//기안서, 문서작성
	@RequestMapping("/type1")
	public String type1(Model model, HttpSession session) {
		String userid = (String)session.getAttribute("id");
		ApprovalDataBean vo = dbPro.apInfo(userid);
		model.addAttribute("vo", vo);
		
		return "approval/type1";
	}
	
	//휴가신청서
	@RequestMapping("/type2")
	public String type2(Model model, HttpSession session) {
		String userid = (String)session.getAttribute("id");
		ApprovalDataBean vo = dbPro.apInfo(userid);
		model.addAttribute("vo", vo);
		return "approval/type2";
	}

	//지출품의서
	@RequestMapping("/type3")
	public String type3(Model model, HttpSession session) {
		String userid = (String)session.getAttribute("id");
		ApprovalDataBean vo = dbPro.apInfo(userid);	
		model.addAttribute("vo", vo);
		return "approval/type3";
	}
	
	
	//문서작성
	@RequestMapping("/apWrite")
	public String apWrite(Model model,HttpSession session, ApprovalDataBean approval, HttpServletRequest request) {
		//세션에서 가져온 값을 userid에 저장
		String userid = (String)session.getAttribute("id");
		//2번째 결재자 id,name 
		String id2 = request.getParameter("id2");
		String name2 = request.getParameter("name2");
		//3번째 결재자 id,name
		String id3 = request.getParameter("id3");
		String name3 = request.getParameter("name3");
	
		
		approval.setInId(userid);
		
		dbPro.apWrite(approval,id2,id3,name2,name3);
		
		model.addAttribute("approval", approval);
		
		String type = approval.getTypegubun();
		if(approval.equals("1")) {	//작성 성공시 리스트로 이동
			return "/approval/list";
		}
		return "/approval/type1";
		
	}

	
	//결재현황 리스트
	@RequestMapping("/allList")
	public String allList(Model model, HttpSession session) {
		//세션에서 가져온 값을 userid에 저장
		String userid = (String)session.getAttribute("id");
		int pageSize=5;
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
		
		int currentPage = Integer.parseInt(pageNum);
		int startRow = (currentPage-1)*pageSize+1;
		int endRow = currentPage* pageSize;
		int count = 0;
		int number = 0;
		List ap = null;
		count = dbPro.allListCount(userid);
		System.out.println(count);
		if(count > 0){
			ap = dbPro.allList(startRow, endRow, userid);
			System.out.println(ap);
			}
				number=count - (currentPage-1)*pageSize;
		
		int bottomLine=3;
		int pageCount=count/pageSize+(count%pageSize==0?0:1);
		int startPage = 1+(currentPage-1)/bottomLine*bottomLine;
		int endPage = startPage+bottomLine-1;
		if(endPage>pageCount) endPage=pageCount;
		
		model.addAttribute("count", count);
		model.addAttribute("ap", ap);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("startPage", startPage);
		model.addAttribute("bottomLine", bottomLine);
		model.addAttribute("endPage", endPage);
		model.addAttribute("number", number);
				
		return "approval/allList";
	}
	
	
	//결재진행 리스트
	@RequestMapping("/apIng")
	public String apIng(Model model, HttpSession session) {
		
		//세션에서 가져온 값을 userid에 저장
		String userid = (String)session.getAttribute("id");
		
		int pageSize=5;
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
		
		int currentPage = Integer.parseInt(pageNum);
		int startRow = (currentPage-1)*pageSize+1;
		int endRow = currentPage* pageSize;
		int count = 0;
		int number = 0;
		List ap = null;
		count = dbPro.apIngCount(userid);
		System.out.println(count);
		if(count > 0){
			ap = dbPro.apIng(startRow, endRow, userid);
			System.out.println(ap);
			}
				number=count - (currentPage-1)*pageSize;
		
		int bottomLine=3;
		int pageCount=count/pageSize+(count%pageSize==0?0:1);
		int startPage = 1+(currentPage-1)/bottomLine*bottomLine;
		int endPage = startPage+bottomLine-1;
		if(endPage>pageCount) endPage=pageCount;
		
		model.addAttribute("count", count);
		model.addAttribute("ap", ap);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("startPage", startPage);
		model.addAttribute("bottomLine", bottomLine);
		model.addAttribute("endPage", endPage);
		model.addAttribute("number", number);
				
		return "approval/apIng";
	}
	
	
	//결재대기 리스트
	@RequestMapping("/apWaiting")
	public String apWaiting(Model model, HttpSession session) {
		
		//세션에서 가져온 값을 userid에 저장
		String userid = (String)session.getAttribute("id");
		
		int pageSize=5;
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
		
		int currentPage = Integer.parseInt(pageNum);
		int startRow = (currentPage-1)*pageSize+1;
		int endRow = currentPage* pageSize;
		int count = 0;
		int number = 0;
		List ap = null;
		count = dbPro.apWaitingCount(userid);
		System.out.println(count);
		if(count > 0){
			ap = dbPro.apWaiting(startRow, endRow, userid);
			System.out.println(ap);
			}
				number=count - (currentPage-1)*pageSize;
		
		int bottomLine=3;
		int pageCount=count/pageSize+(count%pageSize==0?0:1);
		int startPage = 1+(currentPage-1)/bottomLine*bottomLine;
		int endPage = startPage+bottomLine-1;
		if(endPage>pageCount) endPage=pageCount;
		
		model.addAttribute("count", count);
		model.addAttribute("ap", ap);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("startPage", startPage);
		model.addAttribute("bottomLine", bottomLine);
		model.addAttribute("endPage", endPage);
		model.addAttribute("number", number);
				
		return "approval/apWaiting";
	}
	
	
	//상세보기
	@RequestMapping("/apView")
	public String apView(Model model, int docNum) {
		ApprovalDataBean vo = dbPro.viewPage(docNum);
		
		model.addAttribute("vo", vo);
		model.addAttribute("pageNum", pageNum);
		
		String typegubun = vo.getTypegubun();
		
		if(typegubun.equals("doc01")){
			return "approval/type1View";	//기안서 페이지
			
		}else if(typegubun.equals("doc02")) {
			model.addAttribute("vo", vo);
			
			return "approval/type2View";	//휴가신청서 페이지		
		}
			return "approval/type3View";	//지출품의서 페이지
	}
	
	
	
	//상세보기
		@RequestMapping("/apSave")
		public String apSave(Model model, int docNum) {
			ApprovalDataBean vo = dbPro.viewPage(docNum);
			
			model.addAttribute("vo", vo);
			model.addAttribute("pageNum", pageNum);
			
			String typegubun = vo.getTypegubun();
			
			if(typegubun.equals("doc01")){
				return "approval/type1View";	//기안서 페이지
				
			}else if(typegubun.equals("doc02")) {
				model.addAttribute("vo", vo);
				
				return "approval/type2View";	//휴가신청서 페이지		
			}
				return "approval/type3View";	//지출품의서 페이지
		}
	
	
}
