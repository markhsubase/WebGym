<%@ page language="java" contentType="text/html; charset=BIG5"
	pageEncoding="BIG5"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
<title>Post Report Done</title>
</head>
<body>

	<h1>
		<font color="Red">���\�o�G���i </font>
	</h1>

	<h2>
		<div>�޲z�� ${AdminOK.memberid} ���i�w�o�G</div>
		<br> 
		<br>
		<div>Attention�G�к޲z���d�N����H���ʺA</div>
	</h2>
	
	<font color='BLUE'> 
<%-- 	${pageContext.servletContext.contextPath} �� /Timmujin_02 --%>
<%-- 	<a href="${pageContext.servletContext.contextPath}/index.jsp">�^����</a><br> --%>

        <input  type="button" value="�^�o�G���i" style="background-color:blue;color:white;border:5px #cccccc solid;" onclick="location.href='Post.jsp'">
		<input  type="button" value="�^�޲z����" onclick="location.href='Admin.jsp'">
		
	</font>

</body>
</html>