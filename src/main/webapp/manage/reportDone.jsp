<%@ page language="java" contentType="text/html; charset=BIG5"
	pageEncoding="BIG5"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
<title>Mail Report Done</title>
</head>
<body>

	<h1>
		<font color="Red">���\�e�X�H��  </font>
	</h1>
<%-- 	<div>�P�·|��${memberLoginOK.memberID}���ӫH</div> --%>
<h2>
	<div>�޲z�� ${AdminOK.memberid} �����H���w�e�X</div>
	<br>
	<br>
	<div>Attention�G�к޲z���d�N����H���ʺA</div>
</h2>
	<font color='BLUE'> 
<%-- 	${pageContext.servletContext.contextPath} �� /Timmujin_02 --%>
<%-- 	<a href="${pageContext.servletContext.contextPath}/index.jsp">�^����</a><br> --%>

        <input  type="button" value="�^�����H��" style="background-color:blue;color:white;border:5px #cccccc solid;" onclick="location.href='sendmail.jsp'">
		<input  type="button" value="�^�޲z����" onclick="location.href='Admin.jsp'">
		
	</font>

    
</body>
</html>