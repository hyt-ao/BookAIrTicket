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

<title>登录</title>
<link rel="stylesheet" type="text/css"
	href="bootstrap/css/bootstrap.min.css">
<script
	src="${pageContext.request.contextPath}/jquery/jquery-1.9.1.min.js">
	
</script>
<script
	src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js">
	
</script>
<link rel="stylesheet" type="text/css" href="css/login.css">
<script type="text/javascript">
	
</script>
<style type="text/css">
@CHARSET "UTF-8";
</style>
</head>

<body>
	<div class="login_box">
		<div class="login">
			<div class="login_logo">
				<a href="#"><img src="img/login_logo.png" /></a>
			</div>
			<div class="login_name">
				<p>机票预订系统</p>
			</div>
			<form action="" method="post">
				<input type="text" placeholder="用戶名或手机号码" /> <input type="password"
					placeholder="密码" /> <input type="submit" value="登录"
					class="btn btn-primary" /> <a href="" class="btn btn-info">注册</a>
			</form>

		</div>
	</div>

</body>
</html>
