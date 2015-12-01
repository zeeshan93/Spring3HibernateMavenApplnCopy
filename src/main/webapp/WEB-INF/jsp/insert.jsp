<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add new record</title>
</head>
<body>
<h2>ADD EMPLOYEE DETAILS HERE</h2>

<form:form method="post" action="addEmployee" commandName="employee">

	<table>
		<tr>
			<td><form:label path="name">Name:</form:label></td>
			<td><form:input path="name"/></td> 
		</tr>
		<tr>
			<td><form:label path="address">Address:</form:label></td>
			<td><form:input path="address" /></td>
		</tr>
		<tr>
			<td><form:label path="phone">Phone:</form:label></td>
			<td><form:input path="phone" /></td>
		</tr>
		<tr>
			<td><form:label path="email">Email-Id:</form:label></td>
			<td><form:input path="email" /></td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="Add Contact"/>
			</td>
		</tr>
	</table>	
</form:form>


</body>
</html>