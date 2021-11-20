<jsp:include page="../_menu.jsp"/>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    


<h2>Thailand</h2>
<p>Add Country Admin</p>






<form:form modelAttribute="country" method="POST" action="../updateCountry" > 
	<form:input path="countryId"  type="hidden"/>
	countryName:<form:input path="countryName"  />
	<button type="submit" class="btn btn-success">add</button>
</form:form >


<jsp:include page="../_menuDown.jsp"/>
