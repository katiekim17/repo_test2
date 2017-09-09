package global.sesoc.project2.controller;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import global.sesoc.project2.dao.MemberMapper;
import global.sesoc.project2.vo.Member;

@Controller
@RequestMapping("memberMap")
@SessionAttributes("member")
public class MemberMapController {
	
	/*@Autowired
	MemberDAO dao;*/
	@Autowired
	SqlSession sqlSession;
	
	private static final Logger logger = LoggerFactory.getLogger(MemberMapController.class);
	
	// memberMap들어가기 , ajax 요청을 받았으므로 제이슨 데이터를 작성해서 리턴함 
	/*@ResponseBody*/
	@RequestMapping (value="memberMap", method=RequestMethod.GET)
	public String memberMap(Model model) {
		
		logger.debug("memberMap시작");
		MemberMapper mapper = sqlSession.getMapper(MemberMapper.class);
		ArrayList<Member> list = mapper.selectAll();
		
		HashMap<String, String> map = new HashMap<>();
		
		logger.debug("map:{}",map.get(list.get(0).getCustid()));
		logger.debug("list:{}", list.get(1).getCustid());
		/*HashMap<String, String> selectAll = mapper.selectAll();*/
		/*logger.debug("memberMap:{}", selectAll.get("custid"));*/
		/*logger.debug("list:{}", list);*/
		
		
		
		/*//JSONObject 객체를생성
		JSONPObject personInfo = new JSONPObject();
	*/
		
		/*model.addAttribute("selectAll", selectAll);
		*/		
		
		return "memberMap/memberMap";
	}
	
	
}
