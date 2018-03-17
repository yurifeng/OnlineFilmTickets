<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>影片列表-深蓝在线电影</title>
<link rel="stylesheet" href="${path }/dist/css/bootstrap.min.css" />
<script type="text/javascript" src="${path }/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${path }/dist/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${path }/js/layer/layer.js"></script>
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
						<li><a href="${path }/back"><span class="text-success">${user.username }</span></a></li>
						<li><a href="${path }/user/safeExit">安全退出</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</div>

	<div class="container">
		<ol class="breadcrumb">
			<li><a href="#">影片信息</a></li>
			<li><a href="#">2017</a></li>
			<li class="active">十月</li>
		</ol>
	</div>

	<!--查询开始-->
	<div class="container">
		<div>
			<form action="${path }/back/filmList"
				class="bs-example bs-example-form" role="form" method="post">
				<div class="row">
					<div class="col-md-3">
						<div class="input-group">
							<input type="text" id="filmName" name="film.filmName"
								value="${filmVo.film.filmName }" placeholder="影片名称进行模糊查询"
								class="form-control"> <span class="input-group-btn">
								<!-- <button class="btn btn-default" type="button" onclick="queryPage()">查询</button> -->
								<input type="submit" class="btn btn-default" value="查询">
							</span>
						</div>
					</div>
					<div class="col-md-4">
						<button class="btn btn-danger" type="button" onclick="delFilms()">删除影片</button>
						<a href="${path }/back/form" class="btn btn-info">添加影片</a>
					</div>
				</div>
			</form>
		</div>
	</div>
	<!--查询结束-->

	<!--列表主体开始-->
	<div class="container">
		<div class="table-responsive">
			<table class="table table-hover">
				<caption>全部影片信息</caption>
				<thead>
					<tr class="active">
						<th><input type="checkbox" onclick="checkAllOrNot()" /></th>
						<th>影片编号</th>
						<th>影片名称</th>
						<th>导演</th>
						<th>主演</th>
						<th>播放影厅</th>
						<th>播放时间</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${filmList }" var="film">
						<tr>
							<td><input type="checkbox" value="${film.id }" class="cks"
								name="cks" /></td>
							<td>${film.filmCode }</td>
							<td><a href="javascript:;" onclick="showInfo(${film.id })">${film.filmName }</a></td>
							<td>${film.director }</td>
							<td>${film.actors }</td>
							<td>${film.playRoom }</td>
							<td><fmt:formatDate value="${film.playTime }"
									pattern="yyyy-MM-dd HH:mm" /></td>
							<td><a href="${path }/back/form?id=${film.id}"
								class="btn btn-warning">修改</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
	<!--列表主体结束-->

	<!-- 加载页面底部 -->
	<div class="container">
		<div class="row">
			<div class="row text-center">
				<div class="col-md-12">
					<span class="text-info">鱼日丰&reg; |&nbsp;</span> <span
						class="text-info">深蓝在线电影后台系统 |&nbsp;</span> <span
						class="text-info">2017－2020 </span>
				</div>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript">
		//全选/反选
		function checkAllOrNot(){
			for(var i=0;i<$(".cks").length;i++){
				var flag = $(".cks:eq(" + i + ")").prop("checked");
				
				$(".cks:eq(" + i + ")").prop("checked",!flag);
			}
		}
		
		//删除
		function delFilms(){
			//询问框
			layer.confirm('确定要删除这条影片记录?', {
			  btn: ['删除','不删除'] //按钮
			}, function(){
				var ids = "";
				for(var i=0;i<$(".cks:checked").length;i++){
					ids += $(".cks:checked:eq(" + i + ")").val() + ",";//1,2
				}
				ids = ids.substr(0,ids.length-1);
				
				$.ajax({
					url:"${path }/back/filmDel",
					data:{"ids":ids},
					type:"post",
					success:function(msg){
						//判断是否登陆成功
						if(msg == "success"){
							layer.msg("删除成功");
							window.location.href = "${path }/back/filmList";
							return;
						}else{
							return false;
						}
					}
				});
			}, function(){
			  layer.closeAll();
			});
		  }
	</script>
</html>
