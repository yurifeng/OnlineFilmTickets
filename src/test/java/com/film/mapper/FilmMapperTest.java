package com.film.mapper;

import java.util.Date;
import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.film.entity.Film;
import com.film.vo.FilmVo;

/**   
*    
* Project Name：OnlineFilmTickets   
* Class Name：FilmMapperTest   
* Description：Film持久层的测试类
* @author：yuriFeng  
* @date：2018年3月17日 下午12:09:47   
* Contact：yuri_feng@outlook.com 
*      
*/
public class FilmMapperTest {

	ApplicationContext context;

	@Before
	public void setUp() throws Exception {
		context = new ClassPathXmlApplicationContext("classpath:spring-context.xml");
	}

	@Test
	public void testSave() {
		FilmMapper filmMapper = (FilmMapper) context.getBean("filmMapper");
		Film film = new Film("金刚狼3", "", "2017", "动作/剧情", "英文", "中英双字", "詹姆斯·曼高德", "休·杰克曼", "2017", new Date(), "",
				"20171015001", "5号VIP厅", "0");
		Film film2 = new Film("神偷奶爸3", "", "2017", "喜剧/动画/冒险", "英文", "中英双字", "凯尔·巴尔达  Kyle Balda",
				"史蒂夫·卡瑞尔 Steve Carell", "2017", new Date(), "", "20171015002", "1号IMAX厅", "0");
		filmMapper.save(film);
		filmMapper.save(film2);
	}

	@Test
	public void testQueryFilmListByCondition() {
		FilmMapper filmMapper = (FilmMapper) context.getBean("filmMapper");
		Film film = new Film();
		film.setFilmName("狼");
		FilmVo filmVo = new FilmVo();
		filmVo.setFilm(film);
		List<Film> films = filmMapper.queryFilmListByCondition(filmVo);
		films.forEach(System.out::println);
	}

	@Test
	public void testbatchDeleteFilms() {
		FilmMapper filmMapper = (FilmMapper) context.getBean("filmMapper");
		int[] ids = { 7, 8 };
		filmMapper.batchDeleteFilms(ids);

	}

	@Test
	public void testupdate() {
		FilmMapper filmMapper = (FilmMapper) context.getBean("filmMapper");
		Film film = new Film();
		film.setId(17);
		film.setFilmName("战狼2");
		filmMapper.update(film);

	}

	@Test
	public void testselectFilmByPrimaryKey() {
		FilmMapper filmMapper = (FilmMapper) context.getBean("filmMapper");
		Film film = filmMapper.selectFilmByPrimaryKey(17);
		System.out.println(film);
	}

}
