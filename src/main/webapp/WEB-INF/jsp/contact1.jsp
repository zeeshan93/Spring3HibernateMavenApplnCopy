<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
	<title>Spring 3 MVC Series - Employee Manager</title>
	<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
	<style type="text/css">
		body {
			font-family: sans-serif;
		}
		.table{
		 border-collapse: collapse;
    		border: 1px solid black;
		width:50%;
		
		
		
		}
		 .data td {
			border-collapse: collapse;
			
			border: 1px solid #aaa;
			margin: 2px;
			padding: 2px;
		}
		.data th {
			font-weight: bold;
			background-color: #5C82FF;
			color: white;
			border-collapse: collapse;
			
			border: 1px solid #aaa;
			margin: 2px;
			padding: 2px;
		}
	</style>
</head>
<body>

<h2>Employee List</h2>

<form action="/Spring3HibernateMaven/insert">
    <input class="btn btn-success" type="submit" value="Add">
</form>

<!-- <a href="/Spring3HibernateMaven/insert">+ADD</a> -->
<!-- <button type="button" class="btn btn-success">Success</button> -->
<%-- <form:form method="post" action="add.html" commandName="contact"> --%>

<!-- 	<table> -->
<!-- 	<tr> -->
<%-- 		<td><form:label path="firstname"><spring:message code="label.name"/></form:label></td> --%>
<%-- 		<td><form:input path="firstname" /></td>  --%>
<!-- 	</tr> -->
<!-- 	<tr> -->
<%-- 		<td><form:label path="lastname"><spring:message code="label.address"/></form:label></td> --%>
<%-- 		<td><form:input path="lastname" /></td> --%>
<!-- 	</tr> -->
<!-- 	<tr> -->
<%-- 		<td><form:label path="email"><spring:message code="label.phone"/></form:label></td> --%>
<%-- 		<td><form:input path="email" /></td> --%>
<!-- 	</tr> -->
<!-- 	<tr> -->
<%-- 		<td><form:label path="telephone"><spring:message code="label.email"/></form:label></td> --%>
<%-- 		<td><form:input path="telephone" /></td> --%>
<!-- 	</tr> -->
<!-- 	<tr> -->
<!-- 		<td colspan="2"> -->
<%-- 			<input type="submit" value="<spring:message code="label.addcontact"/>"/> --%>
<!-- 		</td> -->
<!-- 	</tr> -->
<!-- </table>	 -->
<%-- </form:form> --%>

	
<!-- <h3>Contacts</h3> -->
<%-- <c:if  test="${!empty contactList}"> --%>
<!-- <table class="data"> -->
<!-- <tr> -->
<!-- 	<th>Name</th> -->
<!-- 	<th>Email</th> -->
<!-- 	<th>Telephone</th> -->
<!-- 	<th>&nbsp;</th> -->
<!-- </tr> -->
<%-- <c:forEach items="${contactList}" var="contact"> --%>
<!-- 	<tr> -->
<%-- 		<td>${contact.lastname}, ${contact.firstname} </td> --%>
<%-- 		<td>${contact.email}</td> --%>
<%-- 		<td>${contact.telephone}</td> --%>
<%-- 		<td><a href="delete/${contact.id}">delete</a></td> --%>
<!-- 	</tr> -->
<%-- </c:forEach> --%>
<!-- </table> -->
<%-- </c:if> --%>


<%-- <c:if  test="${!empty employeeList}"> --%>
<%-- </c:if> --%>
<table  align="center">
<tr>
	<th>Name</th>
	<th>Address</th>
	<th>Telephone</th>
	<th>Email</th>
	<th>Action</th>
</tr>
<c:forEach items="${employeeList}" var="employee">
	<tr>
		<td>${employee.name}</td>
		<td>${employee.address}</td>
		<td>${employee.phone}</td>
		<td>${employee.email}</td>
		<td>
<%-- 		<a href="update/${employee.id}">Update</a> --%>
		<form action="update/${employee.id}">
		    <input type="submit" value="Update">
		</form>
<%-- 		<a href="delete/${employee.id}">delete</a> --%>
		<form action="delete/${employee.id}">
		    <input type="submit" value="Delete">
		</form>
		</td>
	</tr>
</c:forEach>
</table>



</body>
</html>
