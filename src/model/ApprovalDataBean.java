package model;

public class ApprovalDataBean {
	//approval ���̺�
	private int docNo;			//������ȣ
	private String name;		//�ۼ���
	private String inId;		//�ۼ���id
	private String inDt;		//�������
	private String deptName;	//�μ��̸�
	private String teamName;	//���̸�
	private String type; 		//�������  doc01:���,doc02:�ް�,doc03:����
	private String startDt;		//�ް���� / �ް�������
	private String endDt;		//�ް���� / �ް�������
	private String title;		//����
	private String content;		//����
	
	
	//approval_path ���̺�
	/*private int docNo;*/		//approval�� ������ ������ȣ
	private String userid;		//�α����� �����id
	private String username;	//�α����� ������̸�
	private String status;		//��������  st01:������,st02:������,st03:����Ϸ�,st04;�ݷ�
	private String user1;		//����(gubun) ap01:�����
	private String user2;		//����(gubun) ap02:������or������
	private String user3;		//����(gubun) ap03:������
	
	
	
	
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
