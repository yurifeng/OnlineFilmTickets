package com.film.entity;

import java.io.Serializable;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

/**   
*    
* Project Name：OnlineFilmTickets   
* Class Name：Film   
* Description：Film的实体类
* @author：yuriFeng  
* @date：2018年3月17日 下午12:07:42   
* Contact：yuri_feng@outlook.com 
*      
*/
public class Film implements Serializable {

	private static final long serialVersionUID = 1L;
	private Integer id;
	private String filmCode;
	private String filmName;
	private String filmPic;
	private String years;
	private String types;
	private String language;
	private String caption;
	private String director;
	private String actors;
	private String releaseTime;
	private String playRoom;
	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm")
	private Date playTime;
	private String remarks;
	private String delFlag = "0";

	/**
	 * 空参构造
	 */
	public Film() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * Film 的全参构造
	 * @param id
	 * @param filmName
	 * @param filmPic
	 * @param years
	 * @param types
	 * @param language
	 * @param caption
	 * @param director
	 * @param actors
	 * @param releaseTime
	 * @param playTime
	 * @param remarks
	 * @param filmCode
	 * @param playRoom
	 * @param delFlag
	 */
	public Film(Integer id, String filmName, String filmPic, String years, String types, String language,
			String caption, String director, String actors, String releaseTime, Date playTime, String remarks,
			String filmCode, String playRoom, String delFlag) {
		super();
		this.id = id;
		this.filmName = filmName;
		this.filmPic = filmPic;
		this.years = years;
		this.types = types;
		this.language = language;
		this.caption = caption;
		this.director = director;
		this.actors = actors;
		this.releaseTime = releaseTime;
		this.playTime = playTime;
		this.remarks = remarks;
		this.filmCode = filmCode;
		this.playRoom = playRoom;
		this.delFlag = delFlag;
	}

	/**
	 * Film不带id的带参构造
	 * @param filmName
	 * @param filmPic
	 * @param years
	 * @param types
	 * @param language
	 * @param caption
	 * @param director
	 * @param actors
	 * @param releaseTime
	 * @param playTime
	 * @param remarks
	 * @param filmCode
	 * @param playRoom
	 * @param delFlag
	 */
	public Film(String filmName, String filmPic, String years, String types, String language, String caption,
			String director, String actors, String releaseTime, Date playTime, String remarks, String filmCode,
			String playRoom, String delFlag) {
		super();
		this.filmName = filmName;
		this.filmPic = filmPic;
		this.years = years;
		this.types = types;
		this.language = language;
		this.caption = caption;
		this.director = director;
		this.actors = actors;
		this.releaseTime = releaseTime;
		this.playTime = playTime;
		this.remarks = remarks;
		this.filmCode = filmCode;
		this.playRoom = playRoom;
		this.delFlag = delFlag;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getFilmName() {
		return filmName;
	}

	public void setFilmName(String filmName) {
		this.filmName = filmName;
	}

	public String getFilmPic() {
		return filmPic;
	}

	public void setFilmPic(String filmPic) {
		this.filmPic = filmPic;
	}

	public String getYears() {
		return years;
	}

	public void setYears(String years) {
		this.years = years;
	}

	public String getTypes() {
		return types;
	}

	public void setTypes(String types) {
		this.types = types;
	}

	public String getLanguage() {
		return language;
	}

	public void setLanguage(String language) {
		this.language = language;
	}

	public String getCaption() {
		return caption;
	}

	public void setCaption(String caption) {
		this.caption = caption;
	}

	public String getDirector() {
		return director;
	}

	public void setDirector(String director) {
		this.director = director;
	}

	public String getActors() {
		return actors;
	}

	public void setActors(String actors) {
		this.actors = actors;
	}

	public String getReleaseTime() {
		return releaseTime;
	}

	public void setReleaseTime(String releaseTime) {
		this.releaseTime = releaseTime;
	}

	public Date getPlayTime() {
		return playTime;
	}

	public void setPlayTime(Date playTime) {
		this.playTime = playTime;
	}

	public String getRemarks() {
		return remarks;
	}

	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}

	public String getFilmCode() {
		return filmCode;
	}

	public void setFilmCode(String filmCode) {
		this.filmCode = filmCode;
	}

	public String getPlayRoom() {
		return playRoom;
	}

	public void setPlayRoom(String playRoom) {
		this.playRoom = playRoom;
	}

	/**
	 * @return the delFlag
	 */
	public String getDelFlag() {
		return delFlag;
	}

	/**
	 * @param delFlag the delFlag to set
	 */
	public void setDelFlag(String delFlag) {
		this.delFlag = delFlag;
	}

	/**
	 * 重写toString()方法
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Film [id=").append(id).append(", filmCode=").append(filmCode).append(", filmName=")
				.append(filmName).append(", filmPic=").append(filmPic).append(", years=").append(years)
				.append(", types=").append(types).append(", language=").append(language).append(", caption=")
				.append(caption).append(", director=").append(director).append(", actors=").append(actors)
				.append(", releaseTime=").append(releaseTime).append(", playRoom=").append(playRoom)
				.append(", playTime=").append(playTime).append(", remarks=").append(remarks).append(", delFlag=")
				.append(delFlag).append("]");
		return builder.toString();
	}

}
