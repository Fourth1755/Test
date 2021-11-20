<jsp:include page="../_menu.jsp"/>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<nav class="navbar navbar-expand-lg navbar-light bg-light">
                <div class="container-fluid">

                    <button type="button" id="sidebarCollapse" class="btn btn-info">
                        <i class="fas fa-align-left"></i>
                        <span></span>
                    </button>
                    <button class="btn btn-dark d-inline-block d-lg-none ml-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <i class="fas fa-align-justify"></i>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="nav navbar-nav ml-auto">
                     
							
                            <li class="nav-item">
                                <a class="nav-link" href="{{ url('/firstPage')}}">Sign out</a>
                            </li>                           
							
                        </ul>
                    </div>
                </div>
            </nav>

<h2>Country</h2>
<p>Add Country</p>
<div class="input-group">
  <div class="form-outline">
    <input id="search-focus" type="search" id="form1" class="form-control" />   
  </div>
  <button type="button" class="btn btn-primary">
    <i class="fas fa-search"></i>
  </button>
</div>
<table>
<tr>
    <th>ID</th>
	<th>Country</th>
	<th></th>
	<th></th>
  </tr>
<c:forEach var="country" items="${cList}">
<tr>
<th>${country.countryId}</th>

<td>${country.countryName} </td>
<td><a href="${pageContext.request.contextPath}/admin/updateFormCountry/${country.countryId}">update</a></td>
<td><a href="${pageContext.request.contextPath}/admin/deleteFormCountry/${country.countryId}">delete</a></td>
</tr>
</c:forEach>
</table>


<form:form modelAttribute="country" method="POST" action="./addCountry" > 

	countryName:<form:input path="countryName"  />
	<button type="submit" class="btn btn-success">add</button>
</form:form >

<jsp:include page="../_menuDown.jsp"/>