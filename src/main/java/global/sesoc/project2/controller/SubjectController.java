package global.sesoc.project2.controller;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@RequestMapping("menu")
@SessionAttributes("menu")
public class SubjectController {
	
	private static final Logger logger = LoggerFactory.getLogger(SubjectController.class);
	
	
	@Autowired
	SqlSession sqlSession;
	
	@RequestMapping (value="product", method=RequestMethod.GET)
	public String product() {
		
		return "menu/product";
	}
}
