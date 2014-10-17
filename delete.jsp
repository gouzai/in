<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix ="s" uri="/struts-tags" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>delete book</title>
</head>
<body>
<center>
--------------------------------------------------------<br>
the book<s:property value="title"/>has be delete!<br>
	--------------------------------------------------------<br>
	<br>
<input type="button" value="return" onclick="location.href='hello.jsp'"/>
</center>
</body>
</html>