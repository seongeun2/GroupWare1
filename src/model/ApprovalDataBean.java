package model;

public class ApprovalDataBean {
	//approval 테이블
	private int docNo;			//문서번호
	private String name;		//작성자
	private String inId;		//작성자id
	private String inDt;		//등록일자
	private String deptName;	//부서이름
	private String teamName;	//팀이름
	private String type; 		//문서양식  doc01:기안,doc02:휴가,doc03:지출
	private String startDt;		//휴가양식 / 휴가시작일
	private String endDt;		//휴가양식 / 휴가종료일
	private String title;		//제목
	private String content;		//내용
	
	
	//approval_path 테이블
	/*private int docNo;*/		//approval과 동일한 문서번호
	private String userid;		//로그인한 사용자id
	private String username;	//로그인한 사용자이름
	private String status;		//문서상태  st01:진행중,st02:결재대기,st03:결재완료,st04;반려
	private String user1;		//구분(gubun) ap01:기안자
	private String user2;		//구분(gubun) ap02:검토자or결재자
	private String user3;		//구분(gubun) ap03:결재자
	
	
	
	
	public int getDocNo() {
		return docNo;
	}
	public void setDocNo(int docNo) {
		this.docNo = docNo;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getInId() {
		return inId;
	}
	public void setInId(String inId) {
		this.inId = inId;
	}
	public String getInDt() {
		return inDt;
	}
	public void setInDt(String inDt) {
		this.inDt = inDt;
	}
	public String getDeptName() {
		return deptName;
	}
	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}
	public String getTeamName() {
		return teamName;
	}
	public void setTeamName(String teamName) {
		this.teamName = teamName;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getStartDt() {
		return startDt;
	}
	public void setStartDt(String startDt) {
		this.startDt = startDt;
	}
	public String getEndDt() {
		return endDt;
	}
	public void setEndDt(String endDt) {
		this.endDt = endDt;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getUser1() {
		return user1;
	}
	public void setUser1(String user1) {
		this.user1 = user1;
	}
	public String getUser2() {
		return user2;
	}
	public void setUser2(String user2) {
		this.user2 = user2;
	}
	public String getUser3() {
		return user3;
	}
	public void setUser3(String user3) {
		this.user3 = user3;
	}
	
	
}
