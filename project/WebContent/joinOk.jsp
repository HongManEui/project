<%@page import="java.sql.Timestamp" %>
<%@page import="javaEx.project.dao.*" %>
<%@page import="javaEx.project.dto.*" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%
    	request.setCharacterEncoding("EUC-KR");
    %>    
<jsp:useBean id="dto" class="javaEx.project.dto.MemberDto"/>
<jsp:setProperty name="dto" property="*" /> <!-- *는 자동적으로 DTO 객체에 입력이 된다는 의미입니다.  -->

<%
	dto.setrDate(new Timestamp(System.currentTimeMillis()));
	MemberDao dao = MemberDao.getInstance();
	if(dao.confirmId(dto.getId()) == 1){
%>    
	<script language="javascript">
		alert("아이디가 이미 존재 합니다.");
		history.back(); <%-- 브라우저를 한번 back합니다. 왜냐하면 위에서 아이디가 존재하므로 --%>
	</script>
<% 	
	} else{
		int ri = dao.insertMember(dto);
		if(ri == 1){
			session.setAttribute("id",dto.getId());
%>		
		<script language="javascript">
			alert("회원가입을 축하 합니다.");
			document.location.href="login.jsp";
		</script>
<% 
		} else{
			
%>	
		<script language="javascript">
			alert("회원가입에 실패했습니다.");
			document.location.href="login.jsp";
		</script>
<% 
		}
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>