<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="model1.BoardTO" %>

<%
	int flag = (Integer)request.getAttribute("flag");
	String cpage = (String)request.getAttribute("cpage");
	
	out.println("<script type='text/javascript'>");
	if( flag == 0) {
		out.println("alert('글삭제에 성공 했습니다.')");
		out.println("location.href='./list.do?cpage=" + cpage + "';");
	} else if( flag == 1 ) {
		out.println("alert('비밀번호가 잘못되었습니다.')");
		out.println("history.back();");
	} else {
		out.println("alert('글삭제에 실패했습니다.')");
		out.println("history.back();");
	}	
	out.println("</script>");
%>