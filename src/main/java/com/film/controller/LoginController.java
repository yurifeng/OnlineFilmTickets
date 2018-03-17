package com.film.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.film.entity.User;
import com.film.service.UserService;

/**   
*    
* Project Name：OnlineFilmTickets   
* Class Name：LoginController   
* Description：user控制器
* @author：yuriFeng  
* @date：2018年3月17日 下午12:07:26   
* Contact：yuri_feng@outlook.com 
*      
*/
@Controller
public class LoginController {

	/**
	 * 注解注入UserService接口
	 */
	@Autowired
	private UserService userService;

	/**
	 * user登录页面
	 * @return java.lang.String
	 * @throws Exception
	 */
	@RequestMapping("/login")
	public String login() throws Exception {
		return "login";
	}

	/**
	 * user的登录验证Handler(也叫控制器<Controller>)
	 * @param user
	 * @return java.lang.String
	 * @throws Exception
	 */
	@RequestMapping("/loginHandler")
	@ResponseBody
	public String loginHandler(User user) throws Exception {
		return userService.checkUser(user.getUsername(), user.getPassword());
	}

}
