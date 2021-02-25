<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href='css/style.css' rel='stylesheet' style='text/css'/>
<title>Insert title here</title>
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
	
	<div class="content">
	<header class="page-header" role="banner">
    	<h1> 답변 페이지 </h1> 
    </header>
	<table width="500" cellpadding="0" cellspacing="0" border="1" align="center" class="type04">
		<form action="reply.do" method="post">
			<input type="hidden" name="bId" value="${reply_view.bId }">
			<input type="hidden" name="bGroup" value="${reply_view.bGroup }">
			<input type="hidden" name="bStep" value="${reply_view.bStep }">
			<input type="hidden" name="bIndent" value="${reply_view.bIndent }">
			<tr>
				<td>번호</td>
				<td>${reply_view.bId }</td>
			</tr>
			<tr>
				<td>조회</td>
				<td>${reply_view.bHit }</td>
			</tr>
			<tr>
				<td>아이디</td>
				<td><input type="text" name="bName" value=<%out.println(session.getAttribute("id"));%> readonly></td>
			</tr>
			<tr>
				<td>제목</td>
				<td><input type="text" name="bTitle"></td>
			</tr>
			<tr>
				<td>내용</td>
				<td style="text-align:center;"><textarea name="bContent" rows="13" cols="150"></textarea></td>
			</tr>
			<tr>
				<td colspan="2" style="text-align:center;"><input type="submit" value="답변" class="snip1535custom"><a href="list.do" class="snip1535custom">목록보기</a></td>
			</tr>
		</form>
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