<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<style>
.error{
	color: red;
}
</style>
<h1>Student Form</h1>
<form:form action="processForm" modelAttribute="student">
	First Name:<form:input type="test" path="firstName"/>
	<form:errors path="firstName" class="error"/>
	<br/>
	Last Name:<form:input type="test" path="lastName"/>
	<form:errors path="lastName"  class="error"/>
	<br/>
	Age:<form:input type="number" path="age"/>
	<form:errors path="age"  class="error"/>
	<br/>
	<input type="submit" value="submit"/>
</form:form>
</html>