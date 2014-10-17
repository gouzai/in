<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>book</title>
</head>
<body>
<center>
Author
<table>
	<tr>
        <td>authorID</td>
        <td>|</td>       
        <td>name</td>
        <td>|</td>       
        <td>age</td>
        <td>|</td>        
        <td>country</td>
        <td>|</td>
   	</tr>
   	<tr>
        <td><s:property value="id"/></td>
        <td>|</td>        
        <td><s:property value="name"/></td>
        <td>|</td>        
        <td><s:property value="age"/></td>
        <td>|</td>        
        <td><s:property value="country"/></td>
        <td>|</td>
   	</tr>

</table>
	<br>
	####################################################<br>
book
	<table>
   <tr>
     <td>Title</td><td>|</td>       
        <td>ISBN</td><td>|</td>       
        <td>Publisher</td><td>|</td>        
        <td>PublishDate</td><td>|</td>       
        <td>Price</td><td>|</td>
   	</tr>
	</table>

	<table>
	
	
	<s:iterator value="books" id="yuan">
   	<tr>
        <td><s:property value="Title"/></td>
        <td>|</td>
        <td><s:property value="ISBN"/></td>
        <td>|</td>
        <td><s:property value="Publisher"/></td>
        <td>|</td>
        <td><s:property value="PublishDate"/></td>
        <td>|</td>
        <td><s:property value="Price"/></td>
        <td>|</td>
   	</tr>
   	</s:iterator>
	</table>
	####################################################<br>
	<br>
	book you want to delete
	<form Action="deletebook.action" method="post">
		the	 Title of the book:<input type="text" name="title">
			 <input type="submit" value="start delete">
	</form>
	</center>
</body>
</html>