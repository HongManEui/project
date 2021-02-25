<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href='css/style.css' rel='stylesheet' style='text/css'/>
	<script language="JavaScript" src="boards.js"></script>
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
  			<a class="decoa" style="color :white"> </a>
  			<a class="decoa" style="color :white"> </a>
		</div>
	</div>
	
	<div class="content">
	<header class="page-header" role="banner">
    	<h1> 글 내용 </h1> 
    </header>
	<table width="80%" cellpadding="0" cellspacing="0" border="1" align="center" class="type04">
		<form action="modify.do" method="post">
			<input type="hidden" name="bId" value="${content_view.bId }">
			<tr>
				<th scope="row"> 번호 </th>
				<td> ${content_view.bId}</td>
			</tr>
			<tr>
				<th scope="row"> 조회 </th>
				<td> ${content_view.bHit}</td>
			</tr>
			<tr>
				<th scope="row"> 아이디 </th>
				<td> <input type="text" name="bName" value="${content_view.bName}"></td>
			</tr>
			<tr>
				<th scope="row"> 제목 </th>
				<td> <input type="text" name="bTitle" value="${content_view.bHit }"></td>
			</tr>
			<tr>
				<th scope="row"> 내용 </th>
				<td style="text-align:center;"> <textarea name="bContent" rows="13" cols="150">${content_view.bContent }</textarea></td>
			</tr>
			<tr>
				<td colspan="2" style="text-align:center;">
				<%String id=(String)session.getAttribute("id");%>
				<c:if test="${id eq 'itcen1234'}">
					<input type="submit" value="수정" class="snip1535custom">&nbsp;&nbsp;
					<a href="reply_view.do?bId=${content_view.bId}" class="snip1535custom">답변</a>&nbsp;&nbsp;
					<a href= "delete.do?bId=${content_view.bId}" class="snip1535custom">삭제</a>&nbsp;&nbsp; 
				</c:if>
				<c:if test="${id eq 'admin'}">
					<a href="reply_view.do?bId=${content_view.bId}" class="snip1535custom">답변</a>&nbsp;&nbsp;
					<a href= "delete.do?bId=${content_view.bId}" class="snip1535custom">삭제</a>&nbsp;&nbsp; 
				</c:if>
				<c:if test="${id eq content_view.bName}">
					<input type="submit" value="수정" class="snip1535custom">&nbsp;&nbsp;
					<a href= "delete.do?bId=${content_view.bId}" class="snip1535custom">삭제</a>&nbsp;&nbsp;
				</c:if>
				<a href="list.do" class="snip1535custom">목록보기</a> 
				</td> 
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