package controller;

import java.text.SimpleDateFormat;
import java.util.List;

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
	
	//��ȼ�, �����ۼ�
	@RequestMapping("/type1")
	public String type1(Model model, HttpSession session) {
		String userid = (String)session.getAttribute("id");
		ApprovalDataBean vo = dbPro.apInfo(userid);
		model.addAttribute("vo", vo);
		
		return "approval/type1";
	}
	
	//�ް���û��
	@RequestMapping("/type2")
	public String type2(Model model) {
		String userid = "daramy";
		ApprovalDataBean vo = dbPro.apInfo(userid);
		model.addAttribute("vo", vo);
		return "approval/type2";
	}

	//����ǰ�Ǽ�
	@RequestMapping("/type3")
	public String type3(Model model) {
		return "approval/type3";
	}
	
	
	/*//�����ۼ�
	@RequestMapping("/apWrite")
	public String apWrite(Model model, ApprovalDataBean approval) {
		approval = dbPro.apWrite(approval);
		
		model.addAttribute("approval", approval);
		
		String type = approval.getType();
		if(approval.equals("1")) {	//�ۼ� ������ ����Ʈ�� �̵�
			return "/approval/list";
		}
		return "/approval/type1";
		
	}*/

	
	//������Ȳ ����Ʈ
	@RequestMapping("/allList")
	public String allList(Model model) {
		
		//���ǿ��� ������ ���� userid�� ����
		String userid = "daramy";
		
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
	
	
	//�������� ����Ʈ
	@RequestMapping("/apIng")
	public String apIng(Model model) {
		
		//���ǿ��� ������ ���� userid�� ����
		String userid = "daramy";
		
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
	
	
	//������ ����Ʈ
	@RequestMapping("/apWaiting")
	public String apWaiting(Model model) {
		
		//���ǿ��� ������ ���� userid�� ����
		String userid = "daramy";
		
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
	
	
	//�󼼺���
	@RequestMapping("/apView")
	public String apView(Model model, int docNum) {
		ApprovalDataBean vo = dbPro.viewPage(docNum);
		
		model.addAttribute("vo", vo);
		model.addAttribute("pageNum", pageNum);
		
		String type = vo.getType();
		
		if(type.equals("doc01")){
			return "approval/type1View";	//��ȼ� ������
			
		}else if(type.equals("doc02")) {
			model.addAttribute("vo", vo);
			
			return "approval/type2View";	//�ް���û�� ������		
		}
			return "approval/type3View";	//����ǰ�Ǽ� ������
	}
	
	
	
	
}