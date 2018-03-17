package com.film.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.film.entity.User;
import com.film.mapper.UserMapper;
import com.film.service.UserService;

/**   
*    
* Project Name：OnlineFilmTickets   
* Class Name：UserServiceImpl   
* Description：UserService的实现类
* @author：yuriFeng  
* @date：2018年3月17日 下午12:00:06   
* Contact：yuri_feng@outlook.com 
*      
*/
@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserMapper userMapper;

	@Override
	public String checkUser(String username, String password) {
		User user = userMapper.queryUserByName(username);
		if (user != null) {
			if (password.equals(user.getPassword())) {
				return "101"; 
			} else {
				return "102"; 
			}
		} else {
			return "102"; 
		}
	}

}
