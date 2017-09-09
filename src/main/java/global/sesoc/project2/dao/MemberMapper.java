package global.sesoc.project2.dao;


import java.util.ArrayList;
import java.util.HashMap;

import global.sesoc.project2.vo.Member;

public interface MemberMapper {
	
	// 회원정보 저장
	public int insertMember(Member member);

	// ID로 해당 회원정보 검색
	public Member selectMember(String searchId);
	
	//회원 정보 수정
	public int updateMember(Member member);

	//회원정보 모두 보기
	/*public HashMap<String, String> selectAll();*/
	public ArrayList<Member> selectAll();
	

}
