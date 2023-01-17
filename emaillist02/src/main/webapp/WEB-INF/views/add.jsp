<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.douzone.emaillist.vo.EmaillistVo"%>
<%@page import="com.douzone.emaillist.dao.EmaillistDao"%>

<%
	request.setCharacterEncoding("utf-8");

	// 클라이언트에서 action form을 통해 넘어온 데이터 받기
	String firstName = request.getParameter("firstName");
	String lastName = request.getParameter("lastName");
	String email = request.getParameter("email");
	
	EmaillistVo vo = new EmaillistVo();
	vo.setFirstName(firstName);
	vo.setLastName(lastName);
	vo.setEmail(email);
	new EmaillistDao().insert(vo);
	
	response.sendRedirect("/emaillist01"); // /index.jsp
	// 여기서 응답을 보냈으므로 아래 html로 응답을 할 필요가 없음
%>    
