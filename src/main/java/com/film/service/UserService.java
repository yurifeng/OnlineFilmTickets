package com.film.service;

/**   
*    
* Project Name：OnlineFilmTickets   
* Class Name：UserService   
* Description：UserService接口
* @author：yuriFeng  
* @date：2018年3月17日 下午12:04:35   
* Contact：yuri_feng@outlook.com 
*      
*/
public interface UserService {

	/**
	 * 业务层user登录验证接口
	 * @param username
	 * @param password
	 * @return java.lang.String
	 */
	public String checkUser(String username, String password);

}
