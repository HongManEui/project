<%@page import="javaEx.project.dto.SearchingObjDto" %>
<%@page import="javaEx.project.dao.SearchingObjDao" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<%
	request.setCharacterEncoding("EUC-KR");
	
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	String income = request.getParameter("income");
	String job = request.getParameter("job");
	String sido=request.getParameter("sido");
	
	SearchingObjDao dao = SearchingObjDao.getInstance();
%>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>검색결과</title>
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
    	<h1> 검색 결과 </h1> <br /><br />
	</header>
	<%
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		String user="dbtest", pw="1234";
		
		Connection con =null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		Class.forName("oracle.jdbc.OracleDriver");
		
		con=DriverManager.getConnection(url,user,pw);
		
		String sql="SELECT * FROM objs";
		pstmt=con.prepareStatement(sql);
		rs=pstmt.executeQuery();
		
		while(rs.next()){
			String gName = rs.getString("name");
			String gAge = rs.getString("age");
			String aName = rs.getString("aname");
			String gIncome = rs.getString("income");
			String gJob = rs.getString("job");
			int gObjNum = rs.getInt("objNum");
			String gSido = rs.getString("sido");
			String sSido = rs.getString("sname");
			String iName = rs.getString("iname");
			String jName = rs.getString("jname");
			if(gSido.equals(sido) && gAge.equals(age) && gIncome.equals(income) && gJob.equals(job)){	
	 %>
	 <ul class="mylist" style="width:40%"> 	
	 	<li style="font-size:20px; font-weight:bold;"><a href="resultExplanation.jsp">서비스 : <%=gObjNum%> </a><br /></li>
	 	<li>지역 : <%=sSido%></li>
	 	<li>연령 : <%=aName %><br /></li>
	 	<li>소득 : <%=iName %><br /></li>
	 	<li>직종 : <%=jName %><br /></li>
	 </ul> 
	 <% }} %>
	</div>
	<%
	rs.close();
	pstmt.close();
	con.close();
	%>	
	<div class="footer" style="color:white;">
		<div class="logob">
		<br /><img src="img/JungbuLogo.png" alt="My Image" usemap="#logo" style="width:45px; height:45px;"><br />
		</div>
		<br />코로나19 정부지원 지원금 조회 프로젝트<br />Copyright 2021 by 홍만의<br />Phone : 010-4274-1949 / Mail : hme9105@naver.com
	</div>
</body>
</html>