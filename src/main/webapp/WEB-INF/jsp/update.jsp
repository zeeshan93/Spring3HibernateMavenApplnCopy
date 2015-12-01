<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Update Here</title>
</head>
<body>
<form:form method="post" action="updateEmployee" commandName="employee">
	 <form:input type="hidden" path="id" value="${employeeid}"/>
	<table>
		<tr>
			<td><form:label path="name">Name</form:label></td>
			<td><form:input path="name" value="${employeename}"/></td> 
<!-- 			<td> -->
<%-- 	            <form:input path="${employeeid}" readonly="true" size="8"  disabled="true" /> --%>
<%-- 	            <form:hidden path="${employeeid}" /> --%>
<!-- 	        </td> -->
		</tr>
		
		<tr>
			<td><form:label path="address">Address</form:label></td>
			<td><form:input path="address" value="${employeeaddress}"/></td>
		</tr>
		<tr>
			<td><form:label path="phone">Email</form:label></td>
			<td><form:input path="phone" value="${employeemail}"/></td>
		</tr>
		<tr>
			<td><form:label path="email">Telephone</form:label></td>
			<td><form:input path="email" value="${employeephone}"/></td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="Submit"/>
			</td>
		</tr>
	</table>	
</form:form>
</body>
</html>