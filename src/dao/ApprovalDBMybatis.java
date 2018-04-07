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
	
	
	/*//결재문서 작성
	public void apWrite(ApprovalDataBean approval,String name, String deptName, String type) {
		sqlSession = sqlSession();
		int cnt = 0;
		int number = sqlSession.selectOne(namespace+".apNextNumber",approval);
		//번호가 0이 아닌경우
		if(number!=0) {
			number = number+1;
		//번호가 0인 경우			
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
	
	//문서작성시 멤버정보 불러오기
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
	
	//결재현황 리스트
	public List allList(int startRow, int endRow, String userid) {
		sqlSession = sqlSession();
		Map map = new HashMap();
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		map.put("userid", userid);
		
		List li = sqlSession.selectList(namespace+".allList", map) ;		//오브젝트인가? 컬렉션인가?
		sqlSession.close();
		return li;
	}
	
	//결재현황 카운트
	public int allListCount(String userid) {
		int x=0;
		sqlSession = sqlSession();
		Map<String, String> map = new HashMap<String, String>();
		map.put("userid", userid);
		
		x = sqlSession.selectOne(namespace+".allListCount", map) ;		//selectOne (오브젝트) /오브젝트인가? 컬렉션인가?
		sqlSession.close();
		return x;
	}
	
	//진행문서 리스트
	public List apIng(int startRow, int endRow, String userid) {
		sqlSession = sqlSession();
		Map map = new HashMap();
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		map.put("userid", userid);
		
		List li = sqlSession.selectList(namespace+".apIng", map) ;		//오브젝트인가? 컬렉션인가?
		sqlSession.close();
		return li;
	}
	
	//진행문서 카운트
	public int apIngCount(String userid) {
		int x=0;
		sqlSession = sqlSession();
		Map<String, String> map = new HashMap<String, String>();
		map.put("userid", userid);
		
		x = sqlSession.selectOne(namespace+".apIngCount", map) ;		//selectOne (오브젝트) /오브젝트인가? 컬렉션인가?
		sqlSession.close();
		return x;
	}
	
	//결재대기 리스트
	public List apWaiting(int startRow, int endRow, String userid) {
		sqlSession = sqlSession();
		Map map = new HashMap();
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		map.put("userid", userid);
		
		List li = sqlSession.selectList(namespace+".apWaiting", map) ;		//오브젝트인가? 컬렉션인가?
		sqlSession.close();
		return li;
	}

	//결재대기 카운트
	public int apWaitingCount(String userid) {
		int x=0;
		sqlSession = sqlSession();
		Map<String, String> map = new HashMap<String, String>();
		map.put("userid", userid);
		
		x = sqlSession.selectOne(namespace+".apWaitingCount", map) ;		//selectOne (오브젝트) /오브젝트인가? 컬렉션인가?
		sqlSession.close();
		return x;
	}
	
	//상세페이지
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
