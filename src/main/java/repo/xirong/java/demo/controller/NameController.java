package repo.xirong.java.demo.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import repo.xirong.java.demo.model.User;
import repo.xirong.java.demo.service.TestService;

@Controller
@RequestMapping("/names")
public class NameController {

	
	@Autowired TestService testService;
	
	/**
	 * 查询所有的姓名
	 * @return
	 */
	@RequestMapping("/queryNames")
	public ModelAndView queryNames(String code){
		ModelAndView mv = new ModelAndView("name_list");
		List<User> userList = testService.getAllUsers();
		mv.addObject("userList", userList);
		return mv;
		
		
	}
}
