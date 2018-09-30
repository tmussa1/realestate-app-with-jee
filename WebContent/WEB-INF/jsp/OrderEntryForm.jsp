<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form:form modelAttribute="order" method="post" action="purchase/submitItems">    
<table style="border: 1px solid black; width: 100%;">
<c:forEach items="${order.items}" var="item" varStatus="loop">
<tr><th>Item Name</th><th>Item Price</th><th>Quantity</th></tr>
<tr>
<td><c:out value="${item.name}"></c:out></td>
<td><c:out value="$${item.price}"></c:out></td>
<td><form:input path="items[${loop.index}].quantity" /></td>
</tr>
</c:forEach>  
<tr>
<td colspan="2"><input type="submit" value="Purchase"></td>  
</tr>    
</table>
</form:form>
</body>
</html>