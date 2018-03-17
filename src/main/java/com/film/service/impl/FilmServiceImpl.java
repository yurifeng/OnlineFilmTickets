package com.film.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.film.entity.Film;
import com.film.mapper.FilmMapper;
import com.film.service.FilmService;
import com.film.vo.FilmVo;

/**   
*    
* Project Name：OnlineFilmTickets   
* Class Name：FilmServiceImpl   
* Description：FilmService接口的实现类
* @author：yuriFeng  
* @date：2018年3月17日 上午11:57:39   
* Contact：yuri_feng@outlook.com 
*      
*/
@Service
public class FilmServiceImpl implements FilmService {

	@Autowired
	private FilmMapper filmMapper;

	@Override
	public List<Film> findFilmListByCondition(FilmVo filmVo) {
		return filmMapper.queryFilmListByCondition(filmVo);
	}

	@Override
	public void delele(String[] ids) {
		int[] filmIds = new int[ids.length];
		for (int i = 0; i < ids.length; i++) {
			filmIds[i] = Integer.parseInt(ids[i]);
		}
		filmMapper.batchDeleteFilms(filmIds);
	}

	@Override
	public String saveFilm(Film film) {
		if (film.getId() != null) {
			filmMapper.update(film);
		} else {
			filmMapper.save(film);
		}
		return "success";
	}

	@Override
	public Film queryFilmById(Integer id) {
		return filmMapper.selectFilmByPrimaryKey(id);
	}

}
