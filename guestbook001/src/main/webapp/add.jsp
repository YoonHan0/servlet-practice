<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.douzone.guestbook.dao.GuestbookDao"%>
<%@ page import="com.douzone.guestbook.vo.GuestbookVo"%>

<%
	request.setCharacterEncoding("utf-8");

	// 클라이언트에서 action form을 통해 넘어온 데이터 받기
	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String message = request.getParameter("message");
	
	
	GuestbookVo vo = new GuestbookVo();
	vo.setName(name);
	vo.setPassword(password);
	vo.setMessage(message);
	
	new GuestbookDao().insert(vo);
	
	response.sendRedirect(request.getContextPath()); // /index.jsp
	// 여기서 응답을 보냈으므로 아래 html로 응답을 할 필요가 없음
%>    
