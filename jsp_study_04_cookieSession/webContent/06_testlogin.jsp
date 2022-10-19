<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String id="joo3345";
String pwd= "1234";
String name="정은주";

if(id.equals(request.getParameter("id")) &&
		pwd.equals(request.getParameter("pwd"))){

	session.setAttribute("loginUser", name);
	response.sendRedirect("06_main.jsp");

}else{
	

response.sendRedirect("06_loginForm.jsp");

}


%>