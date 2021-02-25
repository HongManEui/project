<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>문의 화면</title>
	<link href='css/style.css' rel='stylesheet' style='text/css'/>
	
</head>
<body>
	<div class="top">
		<div class="logo">
		<img src="img/ITcenLogo.png" alt="My Image" usemap="#logo" style="width:90px; height:30px">
		<map name="logo"><area shape="rect" coords="0,0,90,30" href="main.jsp"></map>
		</div>
		<div class="topnav">
 			<a href="main.jsp" class="decoa" style="color :white">메인</a>
  			<a class="decoa" style="color :white"> </a>
  			<a class="decoa" style="color :white"> </a>
		</div>
	</div>
	
	<div class="content">
	<header class="page-header" role="banner">
    	<h1> 지원금 관련 문의 게시판 </h1> 
    </header>
	<table cellpadding="100" cellspacing="100" border="1" align="center" class="type04">
		<tr>
			<th width="5%" style="background-color: rgb(167, 212, 252); border:none">번호</th>
			<th width="50%" style="background-color: rgb(167, 212, 252); border:none">제목</th>
			<th width="10%" style="background-color: rgb(167, 212, 252); border:none">아이디</th>
			<th width="20%" style="background-color: rgb(167, 212, 252); border:none">날짜</th>
			<th width="5%" style="background-color: rgb(167, 212, 252); border:none">조회</th>
		</tr>
		<c:forEach items="${list}" var="dto">
		<tr style="border:none">
			<td>${dto.bId }</td>
			<td>
				<c:forEach begin="1" end="${dto.bIndent }">-</c:forEach>
				<a href="content_view.do?bId=${dto.bId }">${dto.bTitle }</a></td>
			<td>${dto.bName }</td>
			<td>${dto.bDate }</td>
			<td>${dto.bHit }</td>
		</tr>
		</c:forEach>
		<tr>
			<td colspan="5" style="border-bottom:none; border-right:none; border-left:none;"><a href="write_view.do" class="snip1535custom"style="float:right;">글 작성</a></td>
		</tr>
	</table>	
	</div>
	<div class="footer" style="color:white;">
		<div class="logob">
		<br /><img src="img/JungbuLogo.png" alt="My Image" usemap="#logo" style="width:45px; height:45px;"><br />
		</div>
		<br />코로나19 정부지원 지원금 조회 프로젝트<br />Copyright 2021 by 홍만의<br />Phone : 010-4274-1949 / Mail : hme9105@naver.com
	</div>
</body>
</html>