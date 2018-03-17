package com.film.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.film.entity.Film;
import com.film.service.FilmService;
import com.film.vo.FilmVo;

/**   
*    
* Project Name：OnlineFilmTickets   
* Class Name：FilmController   
* Description：Film的控制器
* @author：yuriFeng  
* @date：2018年3月17日 下午12:07:09   
* Contact：yuri_feng@outlook.com 
*      
*/
@Controller
@RequestMapping("/back")
public class FilmController {

	/**
	 * 注解导入FilmService接口
	 */
	@Autowired
	private FilmService filmService;

	/**
	 * 当user完成登录验证,服务层查询数据库film列表,经过model渲染,从而显示filmList.jsp页面
	 * @param model
	 * @param filmVo
	 * @return java.lang.String
	 * @throws Exception
	 */
	@RequestMapping("filmList")
	public String filmList(Model model, FilmVo filmVo) throws Exception {
		List<Film> filmList = filmService.findFilmListByCondition(filmVo);
		model.addAttribute("filmList", filmList);
		return "filmList";
	}

	/**
	 * 在film列表页面,点击通过业务层删除对应的film记录,返回至成功列表,由控制器跳转到刷新后的filmList.jsp页面
	 * @param ids
	 * @return java.lang.String
	 * @throws Exception
	 */
	@RequestMapping("filmDel")
	@ResponseBody
	public String filmDel(String ids) throws Exception {
		String[] filmIds = ids.split(",");
		filmService.delele(filmIds);
		return "success";
	}

	/**
	 * 通过登录验证的user,查看film详细的信息
	 * @param model
	 * @param film
	 * @return java.lang.String
	 * @throws Exception
	 */
	@RequestMapping("form")
	public String form(Model model, Film film) throws Exception {
		if (film.getId() != null) {
			//查询记录
			model.addAttribute("film", filmService.queryFilmById(film.getId()));
		}
		return "filmForm";
	}

	/**
	 * 通过登录验证的user,添加film信息
	 * @param film
	 * @return java.lang.String
	 * @throws Exception
	 */
	@RequestMapping("save")
	@ResponseBody
	public String save(Film film) throws Exception {
		return filmService.saveFilm(film);
	}

}
