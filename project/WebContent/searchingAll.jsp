<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>조회 화면</title>
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
 			<a href="main.jsp" class="decoa" style="color :white">메인</a>
		</div>
	</div>
	<div class="content" style="background-image:URL(img/searching.png); background-repeat: no-repeat; background-position: 200px center; margin-left:10px; margin-right:10px">
	<header class="page-header" role="banner">
    	<h1> 코로나 정부 지원금 조회 서비스 </h1> <br /><br />
	</header>
		<div class="snip1535" onclick="location.href='searchingFit.jsp' ">맞춤 검색</div>
		<div class="snip1535" onclick="location.href='searchingKey.jsp' ">키워드 검색</div>
	</div>
	<div class="footer" style="color:white;">
		<div class="logob">
		<br /><img src="img/JungbuLogo.png" alt="My Image" usemap="#logo" style="width:45px; height:45px;"><br />
		</div>
		<br />코로나19 정부지원 지원금 조회 프로젝트<br />Copyright 2021 by 홍만의<br />Phone : 010-4274-1949 / Mail : hme9105@naver.com
	</div>
</body>
</html>