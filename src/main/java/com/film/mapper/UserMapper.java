package com.film.mapper;

import com.film.entity.User;

/**   
*    
* Project Name：OnlineFilmTickets   
* Class Name：UserMapper   
* Description：User的接口
* @author：yuriFeng  
* @date：2018年3月17日 上午11:56:08   
* Contact：yuri_feng@outlook.com 
*      
*/
public interface UserMapper {

	/**
	 * 持久层添加User的接口方法
	 * @param user
	 */
	public void save(User user);

	/**
	 * 持久层根据username查询User的接口方法
	 * @param username
	 * @return User
	 */
	public User queryUserByName(String username);

}
