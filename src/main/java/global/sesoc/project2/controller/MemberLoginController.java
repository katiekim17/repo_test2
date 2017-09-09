package global.sesoc.project2.controller;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import global.sesoc.project2.dao.MemberDAO;
import global.sesoc.project2.dao.MemberMapper;
import global.sesoc.project2.vo.Member;

@RequestMapping("member")
@Controller
public class MemberLoginController {
	private static final Logger logger = LoggerFactory.getLogger(MemberLoginController.class);
		
	@Autowired
	SqlSession sqlSession;
	
	@Autowired
	MemberDAO dao;
	
	// 멤버 홈 폼
	@RequestMapping (value="memberHome", method=RequestMethod.GET)
	public String memberHome() {
		return "member/memberHome";
	}
		
	// 로그인 폼
	@RequestMapping (value="login", method=RequestMethod.GET)
	public String login() {
		return "member/loginForm";
	}
	
	// 로그인
	@RequestMapping (value="login", method=RequestMethod.POST)
	public String login(
			String id, String password, 
			Model model, HttpSession session) {
		
		MemberMapper dao = sqlSession.getMapper(MemberMapper.class);
		Member member = dao.selectMember(id);
		
		if(member != null && member.getPassword().equals(password)) {
			session.setAttribute("loginId", member.getCustid());
			session.setAttribute("loginName", member.getName());
			return "redirect:memberHome";
		} else {
			model.addAttribute("errorMsg", "ID 또는 비밀번호가 틀립니다!");
			return "home";
		}
	}
	
	// 관리자 로그인 후
	@RequestMapping (value="adminLogin", method=RequestMethod.GET)
	public String adminLogin () {
		return "member/adminPage";
	}
	
	// 로그아웃
	@RequestMapping (value="logout", method=RequestMethod.GET)
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:memberHome";
	}
	
	// 관리자 로그아웃
	@RequestMapping(value = "adminLogout", method = RequestMethod.GET)
	public String adminLogout(HttpSession session){
		session.invalidate();
		return "redirect:memberHome";
	}
}
