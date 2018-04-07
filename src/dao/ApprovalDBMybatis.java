package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import model.ApprovalDataBean;


public class ApprovalDBMybatis extends MybatisConnector{
	private final String namespace = "approval.mybatis";
	
	private static ApprovalDBMybatis instance = new ApprovalDBMybatis();
	private ApprovalDBMybatis() {
	}
	public static ApprovalDBMybatis getInstance() {
		return instance;
	}
	SqlSession sqlSession;
	
	
	/*//���繮�� �ۼ�
	public void apWrite(ApprovalDataBean approval,String name, String deptName, String type) {
		sqlSession = sqlSession();
		int cnt = 0;
		int number = sqlSession.selectOne(namespace+".apNextNumber",approval);
		//��ȣ�� 0�� �ƴѰ��
		if(number!=0) {
			number = number+1;
		//��ȣ�� 0�� ���			
		}else {
			number = 1;
		}
		approval.setDocNo(number);
		approval.setName(name);
		approval.setDeptName(deptName);
		approval.setType(type);
		
		sqlSession.insert(namespace+".apInsert",approval);
		sqlSession.insert(namespace+".apInsert_path",approval);
		
		sqlSession.commit();
		sqlSession.close();
	}
	*/
	
	//�����ۼ��� ������� �ҷ�����
	public ApprovalDataBean apInfo(String userid) {
		sqlSession = sqlSession();
		Map map = new HashMap();
		map.put("userid", userid);
		System.out.println(userid);
		ApprovalDataBean approval = sqlSession.selectOne(namespace+".apInfo", map) ;
		approval.getContent();
		sqlSession.close();
		return approval;
	}
	
	//������Ȳ ����Ʈ
	public List allList(int startRow, int endRow, String userid) {
		sqlSession = sqlSession();
		Map map = new HashMap();
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		map.put("userid", userid);
		
		List li = sqlSession.selectList(namespace+".allList", map) ;		//������Ʈ�ΰ�? �÷����ΰ�?
		sqlSession.close();
		return li;
	}
	
	//������Ȳ ī��Ʈ
	public int allListCount(String userid) {
		int x=0;
		sqlSession = sqlSession();
		Map<String, String> map = new HashMap<String, String>();
		map.put("userid", userid);
		
		x = sqlSession.selectOne(namespace+".allListCount", map) ;		//selectOne (������Ʈ) /������Ʈ�ΰ�? �÷����ΰ�?
		sqlSession.close();
		return x;
	}
	
	//���๮�� ����Ʈ
	public List apIng(int startRow, int endRow, String userid) {
		sqlSession = sqlSession();
		Map map = new HashMap();
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		map.put("userid", userid);
		
		List li = sqlSession.selectList(namespace+".apIng", map) ;		//������Ʈ�ΰ�? �÷����ΰ�?
		sqlSession.close();
		return li;
	}
	
	//���๮�� ī��Ʈ
	public int apIngCount(String userid) {
		int x=0;
		sqlSession = sqlSession();
		Map<String, String> map = new HashMap<String, String>();
		map.put("userid", userid);
		
		x = sqlSession.selectOne(namespace+".apIngCount", map) ;		//selectOne (������Ʈ) /������Ʈ�ΰ�? �÷����ΰ�?
		sqlSession.close();
		return x;
	}
	
	//������ ����Ʈ
	public List apWaiting(int startRow, int endRow, String userid) {
		sqlSession = sqlSession();
		Map map = new HashMap();
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		map.put("userid", userid);
		
		List li = sqlSession.selectList(namespace+".apWaiting", map) ;		//������Ʈ�ΰ�? �÷����ΰ�?
		sqlSession.close();
		return li;
	}

	//������ ī��Ʈ
	public int apWaitingCount(String userid) {
		int x=0;
		sqlSession = sqlSession();
		Map<String, String> map = new HashMap<String, String>();
		map.put("userid", userid);
		
		x = sqlSession.selectOne(namespace+".apWaitingCount", map) ;		//selectOne (������Ʈ) /������Ʈ�ΰ�? �÷����ΰ�?
		sqlSession.close();
		return x;
	}
	
	//��������
	public ApprovalDataBean viewPage(int docNum) {
		sqlSession = sqlSession();
		Map map = new HashMap();
		map.put("docno", docNum);
		ApprovalDataBean approval = sqlSession.selectOne(namespace+".viewPage", map) ;
		approval.getContent();
		sqlSession.close();
		return approval;
	}
	
	
	
	
}
