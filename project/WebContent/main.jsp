<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<%
	if(session.getAttribute("ValidMem")==null){
%>
	<jsp:forward page="login.jsp"/>
<%
	}
	String name = (String)session.getAttribute("name");
	String id = (String)session.getAttribute("id");
	String aid = "admin";
	String ac = "itcen1234";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>시작 화면</title>
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
 			<% 
  			if(id.equals(aid)){
  			%>
  			<a href="membersAll.jsp" style="color :white">관리자 페이지</a>
  			<a href="list.do" style="color :white">문의</a>
  			<% 
  			}
  			else if(id.equals(ac)){
  			%>
  			<a href="membersAll.jsp" style="color :white">관리자 페이지</a>
  			<a href="searchingAll.jsp" style="color :white">조회</a>
  			<a href="registerAll.jsp" style="color :white">신청</a>
  			<a href="list.do" style="color :white">문의</a>
  			<%
  			}
			else{
			%>
  			<a href="searchingAll.jsp" style="color :white">조회</a>
  			<a href="registerAll.jsp" style="color :white">신청</a>
  			<a href="list.do" style="color :white">문의</a>
			<%
			}
  			%>
		</div>
	</div>
	
	<div class="content" style="background-image:URL(img/b4.jpg),URL(img/b6.jpg); background-repeat: no-repeat; height: auto, auto; width: auto, auto; background-position: 10px center, 1110px center;">
		<header class="page-header" role="banner">
    	<h1> <%= name %>님 안녕하세요. </h1> <br /><br />
		</header>
	<form action="logout.jsp" method="post">
		<input type="submit" value="로그아웃" class="snip1535custom"> &nbsp;&nbsp;&nbsp;<input type="button" value="정보수정" onclick="javascript:window.location='modify.jsp'" class="snip1535custom">
	</form>
	<br /><br /><br /><br /><br /><br /><br /><br />
	</div>
	<div class="footer" style="color:white;">
		<div class="logob">
		<br /><img src="img/JungbuLogo.png" alt="My Image" usemap="#logo" style="width:45px; height:45px;"><br />
		</div>
		<br />코로나19 정부지원 지원금 조회 프로젝트<br />Copyright 2021 by 홍만의<br />Phone : 010-4274-1949 / Mail : hme9105@naver.com
	</div>
</body>
</html>