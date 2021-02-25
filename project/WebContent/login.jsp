<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>로그인 화면</title>
	<link href='css/style.css' rel='stylesheet' style='text/css'/>
	<script language="JavaScript" src="members.js"></script>	
</head>
<body>
	<div class="top">
		<div class="logo">
		<img src="img/ITcenLogo.png" alt="My Image" usemap="#logo" style="width:90px; height:30px">
		<map name="logo"><area shape="rect" coords="0,0,90,30" href="main.jsp"></map>
		</div>
		<div class="topnav">
 			<a href="join.jsp" class="decoa" style="color :white">회원가입</a>
  			<a class="decoa" style="color :white"> </a>
  			<a class="decoa" style="color :white"> </a>
		</div>
	</div>
	<div class="content" style="background-image:URL(img/b2.jpg),URL(img/b3.jpg); background-repeat: no-repeat; background-position: 10px center, 1110px center;">
		<header class="page-header" role="banner">
    		<h1> 로그인 페이지 </h1> <br /><br />
		</header>
		<fieldset class="f1">
		<form action="loginOk.jsp" method="post">
			<h3>아이디 : &nbsp;&nbsp;&nbsp;<input type="text" name="id" value="<% if(session.getAttribute("id") != null) out.println(session.getAttribute("id")); %>"> </h3>
			<h3>비밀번호 : <input type="password" name="pw"> </h3> <br />
			<tr><td><input type="submit" value="로그인" class="snip1535custom"></td><td><input type="button" value="회원가입" onclick="javascript:window.location='join.jsp'" class="snip1535custom"></td></tr>
		</form>
		</fieldset>
	</div>	
	<div class="footer" style="color:white;">
		<div class="logob">
		<br /><img src="img/JungbuLogo.png" alt="My Image" usemap="#logo" style="width:45px; height:45px;"><br />
		</div>
		<br />코로나19 정부지원 지원금 조회 프로젝트<br />Copyright 2021 by 홍만의<br />Phone : 010-4274-1949 / Mail : hme9105@naver.com
	</div>	
</body>
</html>