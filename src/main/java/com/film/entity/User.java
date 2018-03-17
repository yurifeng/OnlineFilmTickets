package com.film.entity;

/**   
*    
* Project Name：OnlineFilmTickets   
* Class Name：User   
* Description：User的实体类
* @author:yuriFeng  
* Create Date：2018年3月17日 上午11:45:22   
* Contact：yuri_feng@outlook.com 
* 	
*/
public class User {

	private Integer id;
	private String username;
	private String password;

	/**
	 * 空参构造
	 */
	public User() {
		super();
	}

	public User(String username, String password) {
		super();
		this.username = username;
		this.password = password;
	}

	/**
	 * @return the id
	 */
	public Integer getId() {
		return id;
	}

	/**
	 * @param id the id to set
	 */
	public void setId(Integer id) {
		this.id = id;
	}

	/**
	 * @return the username
	 */
	public String getUsername() {
		return username;
	}

	/**
	 * @param username the username to set
	 */
	public void setUsername(String username) {
		this.username = username;
	}

	/**
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}

	/**
	 * @param password the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}

	/**
	 * 重写toString()方法
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("User [id=").append(id).append(", username=").append(username).append(", password=")
				.append(password).append("]");
		return builder.toString();
	}
}
