package com.film.service;

import java.util.List;

import com.film.entity.Film;
import com.film.vo.FilmVo;

/**   
*    
* Project Name：OnlineFilmTickets   
* Class Name：FilmService   
* Description：FilmService接口
* @author：yuriFeng  
* @date：2018年3月17日 下午12:00:40   
* Contact：yuri_feng@outlook.com 
*      
*/
public interface FilmService {

	/**
	 * 业务层通过条件查询Film的集合接口方法
	 * @param filmVo
	 * @return List<Film>
	 */
	public List<Film> findFilmListByCondition(FilmVo filmVo);

	/**
	 * 业务层批量删除Film的接口方法
	 * @param ids
	 */
	public void delele(String[] ids);

	/**
	 * 业务层添加Film的接口方法
	 * @param film
	 * @return java.lang.String
	 */
	public String saveFilm(Film film);

	/**
	 * 业务层根据id查询Film的接口方法
	 * @param id
	 * @return Film
	 */
	public Film queryFilmById(Integer id);
}
