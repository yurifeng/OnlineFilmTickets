package com.film.mapper;

import java.util.List;

import com.film.entity.Film;
import com.film.vo.FilmVo;

/**   
*    
* Project Name：OnlineFilmTickets   
* Class Name：FilmMapper   
* Description：Film的接口
* @author：yuriFeng  
* @date：2018年3月17日 上午11:51:15   
* Contact：yuri_feng@outlook.com 
*      
*/
public interface FilmMapper {
	/**
	 * 持久层添加Film的接口方法
	 * @param film
	 */
	public void save(Film film);

	/**
	 * 持久层根据条件查询Film的接口方法
	 * @param filmVo
	 * @return List<Film>
	 */
	public List<Film> queryFilmListByCondition(FilmVo filmVo);

	
	/**
	 * 持久层批量删除Film的接口方法
	 * @param ids
	 */
	public void batchDeleteFilms(int[] ids);

	
	/**
	 * 持久层修改Film的接口方法
	 * @param film
	 */
	public void update(Film film);

	
	/**
	 * 持久层根据film的id查询Film的接口方法
	 * @param id
	 * @return Film
	 */
	public Film selectFilmByPrimaryKey(Integer id);
}
