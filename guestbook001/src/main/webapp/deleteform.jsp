<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>방명록 삭제</title>
</head>
<body>
	<form method="post" action="/guestbook001/delete.jsp">
		<input type='hidden' name="no" value="<%=request.getParameter("no")%>">
		<table>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="password"></td>
				<td><input type="submit" value="확인"></td>

			</tr>
		</table>
	</form>
	<br>
	<td><a href="/guestbook001">메인으로 돌아가기</a></td>
</body>
</html>