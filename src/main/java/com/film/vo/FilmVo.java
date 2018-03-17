package com.film.vo;

import com.film.entity.Film;


/**   
*    
* Project Name：OnlineFilmTickets   
* Class Name：FilmVo   
* Description：查询条件包装类
* @author：yuriFeng  
* @date：2018年3月17日 下午12:08:40   
* Contact：yuri_feng@outlook.com 
*      
*/
public class FilmVo {
	
	private Film film;

	/**
	 * @return the film
	 */
	public Film getFilm() {
		return film;
	}

	/**
	 * @param film the film to set
	 */
	public void setFilm(Film film) {
		this.film = film;
	}
	
}
