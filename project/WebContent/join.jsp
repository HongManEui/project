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
	<title>회원가입 화면</title>
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
 			<a href="login.jsp" class="decoa" style="color :white">로그인</a>
  			<a class="decoa" style="color :white"> </a>
  			<a class="decoa" style="color :white"> </a>
		</div>
	</div>
	
	<div class="content" style="background-image:URL(img/b1.jpg),URL(img/b7.jpg); background-repeat: no-repeat; height: auto, auto; width: auto, auto;  background-position: 10px center, 1110px center;">
	<header class="page-header" role="banner">
    	<h1> 회원가입 </h1> 
    </header>
    <fieldset class="f1">
		<form action="joinOk.jsp" method="post" name="reg_frm">
		<table class="type06" style="vertical-align: center;">
			<tr><td align=left>아이디 : </td><td> <input type="text" name="id" size="20"> </td></tr> 
			<tr><td align=left>비밀번호 : </td><td> <input type="password" name="pw" size="20"> </td></tr>
			<tr><td align=left>비밀번호 확인 : </td><td> <input type="password" name="pw_check" size="20"> </td></tr>
			<tr><td align=left>이름 : </td><td> <input type="text" name="name" size="20"> </td></tr> 
			<tr><td align=left>메일 : </td><td> <input type="text" name="eMail" size="20"> </td></tr> 
			<tr><td align=left>주소 : </td><td> <input type="text" name="address" size="50" style="width:176px"> </td></tr> 
			<tr><td colspan="2"><input type="button" value="회원가입" onclick="infoConfirm()" class="snip1535custom">&nbsp;&nbsp;&nbsp; <input type="reset" value="취소" onclick="javascript:window.location='login.jsp'" class="snip1535custom"></td></tr>	
		</table>
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
