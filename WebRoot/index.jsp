<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">

<title>机票预订</title>
<script
	src="${pageContext.request.contextPath}/jquery/jquery-1.9.1.min.js">
	
</script>
<script
	src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js">
	
</script>
<link rel="stylesheet" type="text/css"
	href="bootstrap/css/bootstrap.min.css">
</head>

<body>
	<nav class="navbar navbar-default" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">机票预订</a>
			</div>
			<c:if test="${sessionScope.userName==null}" >
				<ul class="nav navbar-nav navbar-right">
				<li><a href="#" data-toggle="modal" data-target="#register"><span class="glyphicon glyphicon-user"></span>
						注册</a></li>
				<li><a href="#" data-toggle="modal" data-target="#loging">
						<span class="glyphicon glyphicon-log-in"></span>
						登录</a></li>
				</ul>
			</c:if>
			<c:if test="${sessionScope.userName1!=null}">
				<ul class="nav navbar-nav navbar-right">
				<li><a href="#"><span class="glyphicon glyphicon-user"></span>
						${sessionScope.userName }</a></li>
				<li><a href="#"><span class="glyphicon glyphicon-log-out"></span>
						注销登录</a></li>
				</ul>
			</c:if>
		</div>
	</nav>
	
	<!-- 登录模态框 -->
	<div class="modal fade bs-example-modal-sm" id="loging" tabindex="-1" role="dialog"
		aria-labelledby="loginLabel" aria-hidden="true" data-backdrop="true">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<h4 style="text-align: center;">登录</h4>
				<div class="modal-body">
					<form action="" method="post">
						<input class="form-control" style="margin:10px 0px;" type="text" placeholder="用戶名或手机号码" /> 
						<input class="form-control" style="margin:10px 0px;" type="password" placeholder="密码" /> 
						<input type="button" id="login" value="登录" class="btn btn-primary btn-block" /> 
					</form>
				</div>
			</div>
		</div>
	</div>
	
	<!-- 注册模态框 -->
	<div class="modal fade bs-example-modal-sm" id="register" tabindex="-1" role="dialog"
		aria-labelledby="registerLabel" aria-hidden="true" data-backdrop="true">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<h4 style="text-align: center;">注册</h4>
				<div class="modal-body">
					<form action="" method="post">
						<input class="form-control" style="margin:10px 0px;" type="text" placeholder="用戶名或手机号码" /> 
						<input class="form-control" style="margin:10px 0px;" type="password" placeholder="密码" /> 
						<input type="button" id="login" value="注册" class="btn btn-primary btn-block" /> 
					</form>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		function centerModals() {
			$('.modal').each(
					function(i) {
						var $clone = $(this).clone().css('display', 'block')
								.appendTo('body');
						var top = Math.round(($clone.height() - $clone.find(
								'.modal-content').height()) / 2);
						top = top > 50 ? top : 0;
						$clone.remove();
						$(this).find('.modal-content').css("margin-top",top - 50);
					});
		}
		// 在模态框出现的时候调用垂直居中方法 
		$('.modal').on('show.bs.modal', centerModals);
		// 在窗口大小改变的时候调用垂直居中方法 
		$(window).on('resize', centerModals);
	</script>
</body>
</html>
