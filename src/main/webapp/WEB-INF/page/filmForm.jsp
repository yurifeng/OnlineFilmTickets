<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>影片编辑列表-深蓝在线电影</title>
		<link rel="stylesheet" href="${path }/dist/css/bootstrap.min.css" />
		<link rel="stylesheet" href="${path }/css/update.css" />
		<link rel="stylesheet" href="${path }/js/jquery-upload/css/jquery.fileupload-ui.css" />
		<link rel="stylesheet" href="${path }/js/jquery-upload/css/jquery.fileupload.css" />
		<style type="text/css">
			.error{
				color:red;
			}
		</style>
	</head>
	<body>
		<!-- 加载页面顶部 -->
		<div class="container">
			<nav class="navbar navbar-default" role="navigation">
				<div class="container-fluid">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target="#example-navbar-collapse">
							<span class="sr-only">切换导航</span> <span class="icon-bar"></span> <span
								class="icon-bar"></span> <span class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="#">深蓝电影城后台管理系统</a>
					</div>
					<div class="collapse navbar-collapse" id="example-navbar-collapse">
						<ul class="nav navbar-nav navbar-right">
							<li><a href="#"><span class="text-success">jack</span></a></li>
							<li><a href="${path }/user/safeExit">安全退出</a></li>
						</ul>
					</div>
				</div>
			</nav>
		</div>
		
		<div class="container">
			<div id="update">
				<form id="filmForm" action="#" method="post"  class="form-horizontal" role="form" enctype="multipart/form-data">
					<fieldset>
						<legend>新增影片信息</legend>
						<input type="hidden" value="${film.id }" name="id">
						<input type="hidden" id="filmPic" name="filmPic">
						<div class="form-group">
							<label for="filmCode" class="col-md-3 control-label">影片编号</label>
							<div class="col-md-6">
								<input type="text" name="filmCode" value="${film.filmCode }" class="form-control" required="required">
							</div>
						</div>
						<div class="form-group">
							<label for="filmName" class="col-md-3 control-label">片名</label>
							<div class="col-md-6">
								<input type="text" name="filmName" value="${film.filmName }" class="form-control" required="required">
							</div>
						</div>
						<%-- <div class="form-group">
							<label for="filmPic" class="col-md-3 control-label">谍照</label>
							<div class="col-md-6">
								<div id="queue">
									 <img alt="谍照" width="240px" id="queue_img" height="240px" src="/pic/${film.filmPic }">
								</div>
								<span class="btn btn-success fileinput-button">
				                    <i class="glyphicon glyphicon-plus"></i>
				                    <span>选择谍照</span>
				                    <input type="file" name="file_upload" id="file_upload" >
				                </span>
								<!-- <input type="file" id="file_upload" name="file_upload" value=""> -->
							</div>
						</div> --%>
						<div class="form-group">
							<label for="years" class="col-md-3 control-label">年代</label>
							<div class="col-md-6">
								<input type="text" name="years" value="${film.years }" class="form-control" required="required">
							</div>
						</div>
						<div class="form-group">
							<label for="types" class="col-md-3 control-label">类别</label>
							<div class="col-md-6">
								<input type="text" name="types" value="${film.types }" class="form-control" required="required">
							</div>
						</div>
						<div class="form-group">
							<label for="language" class="col-md-3 control-label">语言</label>
							<div class="col-md-6">
								<input type="text" name="language" value="${film.language }" class="form-control" required="required">
							</div>
						</div>
						<div class="form-group">
							<label for="caption" class="col-md-3 control-label">字幕</label>
							<div class="col-md-6">
								<input type="text" name="caption" value="${film.caption }" class="form-control" required="required">
							</div>
						</div>
						<div class="form-group">
							<label for="director" class="col-md-3 control-label">导演</label>
							<div class="col-md-6">
								<input type="text" name="director" value="${film.director }" class="form-control" required="required">
							</div>
						</div>
						<div class="form-group">
							<label for="actors" class="col-md-3 control-label">演员</label>
							<div class="col-md-6">
								<input type="text" name="actors" value="${film.actors }" class="form-control" required="required">
							</div>
						</div>
						<div class="form-group">
							<label for="releaseTime" class="col-md-3 control-label">上映时间</label>
							<div class="col-md-6">
								<input type="text" name="releaseTime" value="${film.releaseTime }" class="form-control" required="required">
							</div>
						</div>
						<div class="form-group">
							<label for="playRoom" class="col-md-3 control-label">播放影厅</label>
							<div class="col-md-6">
								<input type="text" name="playRoom" value="${film.playRoom }" class="form-control" required="required">
							</div>
						</div>
						<div class="form-group">
							<div>
								<div class="form-group has-feedback">
									<label for="playTime" class="col-md-3 control-label">播放时间</label>
									<div class="col-md-6">
										<input name="playTime" value='<fmt:formatDate value="${film.playTime }" pattern="yyyy-MM-dd HH:mm:ss" />' type="text" class="form-control" id="datetimepicker" required="required"> 
										<span class="glyphicon glyphicon-time form-control-feedback"></span>
									</div>
								</div>
							</div>
						</div>
						<div class="form-group">
							<div>
								<div class="form-group has-feedback">
									<label for="remarks" class="col-md-3 control-label">简介</label>
									<div class="col-md-8">
										<textarea id="remarks" name="remarks"  rows="10" cols="80">${film.remarks }</textarea>
									</div>
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<button type="button" class="btn btn-warning" onclick="saveFilm()">保存</button>
								<button type="button" class="btn btn-warning" onclick="back()">返回</button>
							</div>
						</div>
					</fieldset>
				</form>
			</div>
		</div>
		
		<!-- 加载页面底部 -->
		<div class="container">
			<div class="row">
				<div class="row text-center">
					<div class="col-md-12">
						<span class="text-info">鱼日丰&reg; |&nbsp;</span>
						<span class="text-info">深蓝在线电影后台系统 |&nbsp;</span>
						<span class="text-info">2017－2020 </span>
					</div>
				</div>
			</div>
		</div>
	</body>
	<!--引入js-->
	<script type="text/javascript" src="${path }/js/jquery-3.2.1.min.js" ></script>
	<script type="text/javascript" src="${path }/dist/js/bootstrap.min.js" ></script>
	<script type="text/javascript" src="${path }/js/moment.js" ></script>
	<script type="text/javascript" src="${path }/js/bootstrap-datetimepicker.min.js" ></script>
	<script type="text/javascript" src="${path }/js/update.js" ></script>
	<script type="text/javascript" src="${path }/js/layer/layer.js"></script>
	<script type="text/javascript">
		function saveFilm() {
			var data = $("#filmForm").serialize();
			$.ajax({
				url:"${path }/back/save",
				data:data,
				type:"post",
				success:function(msg){
					//判断是否登陆成功
					if(msg == "success"){
						layer.msg("保存成功");
						window.location.href = "${path }/back/filmList";
						return;
					}else{
						return false;
					}
				}
			});
		}
		
		//返回
		function back(){
			window.location.href = "${path }/back/filmList";
		}
		
	</script>
	
</html>
