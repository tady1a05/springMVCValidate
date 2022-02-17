<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<style>
.error{
	color: red;
}
</style>
<h1>Student Form</h1>
<form:form action="processForm" modelAttribute="student">
	First Name:<form:input type="text" path="firstName"/>
	<form:errors path="firstName" class="error"/>
	<br/>
	Last Name:<form:input type="text" path="lastName"/>
	<form:errors path="lastName"  class="error"/>
	<br/>
	Age:<form:input type="text" path="age"/>
	<form:errors path="age"  class="error"/>
	<br/>
	Classroom:<form:input type="text" path="classroom"/>
	<form:errors path="classroom"  class="error"/>
	<br/>
	<input type="submit" value="submit"/>
</form:form>
</html>