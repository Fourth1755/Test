<jsp:include page="../_menu.jsp"/>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
                        
						   <li class="nav-item active">
								<a class="nav-link" href="${pageContext.request.contextPath}/admin/index">Manage User</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="${pageContext.request.contextPath}/admin/approveUser">Approve(${numWaiting})</a>
							</li>
							
                            <li class="nav-item">
                                <a class="nav-link" href="{{ url('/firstPage')}}">Sign out</a>
                            </li>                           
							
                        </ul>
                    </div>
                </div>
            </nav>    
<h2>User profile</h2>
<p></p>
<div class="container">
  <form:form method="POST" action="${pageContext.request.contextPath}/admin/save" modelAttribute="user" >
   <form:input path="userName" type="hidden"/>
   <form:input path="password" type="hidden"/>
   <form:input path="userId" type="hidden"/>
	  <!--<input type="text" value="${user.createDate}">-->
  <!--<input type="hidden" id="userId" name="userId" placeholder="${user.userId}">-->
 
  
	<div class="row">
	  <div class="col-25">
		<label for="fname">First Name</label>
	  </div>
	  <div class="col-75">
		<input type="text" id="fname" name="firstNames" placeholder="${user.firstName}" disabled>
		<!--<form:input path="firstName"/>-->
	  </div>
	</div>
	<div class="row">
	  <div class="col-25">
		<label for="lname">Last Name</label>
	  </div>
	  <div class="col-75">
		<input type="text" id="lname" name="lastName" placeholder="${user.lastName}" disabled>
		<!--<form:input path="lastName"/>-->
	  </div>
	</div>
	<div class="row">
	  <div class="col-25">
		<label for="fname">Email</label>
	  </div>
	  <div class="col-75">
		<input type="text" id="email" name="userName" placeholder="${user.userName}" disabled>
	  </div>
	</div>
	<div class="row">

<!--<form:input  path="position.positionId" value="${position.positionId}" />
 <form:input  path="position.positionName" value="${position.positionName}" />
-->
<div class="col-25">
		<label for="position">Position</label>
	  </div>
	  <div class="col-75"> 
 		<form:select path = "position" >

			<!--<c:forEach items="${positionList}" var="cat">
                <form:option  value="${cat.positionId}" label="${cat.positionName}"  />
            </c:forEach>
   -->

			<!--<c:forEach items="${positionList}" var="item" varStatus="count"> 
					<option value="${count.index}"  ${not empty positionList && positionId == count.index ? 'selected' : ''} >${item.positionName }</option>
			</c:forEach>
-->
    
        <c:forEach items="${positionList}" var="item"  varStatus="count"> 
            <option value="${item.positionId}"  ${not empty item.positionId && item.positionId== user.position.positionId? 'selected' : ''} >${item.positionName }</option>
        </c:forEach>
  <!--     <form:options items = "${positionList}" itemValue="positionId"  itemLabel="positionName" />  -->

     	</form:select>
	  </div>
	  <!--<div class="col-25">
		<label for="lname">Position</label>
	  </div>
	  <div class="col-75">
		<select id="position" name="position">
		  <option value="1">Plant Phatologist</option>
		  <option value="2">Other</option>
		</select>
	  </div>-->
	</div>
	<div class="row">
	
	 <div class="col-25">
		<label for="country">Country</label>
	  </div>
	  <div class="col-75">
	  	<form:select path = "country" >
	  		<c:forEach items="${countryList}" var="item"  varStatus="count"> 
            <option value="${item.countryId}"  ${not empty item.countryId && item.countryId== user.country.countryId? 'selected' : ''} >${item.countryName }</option>
        	</c:forEach>
	  	</form:select>
	  </div>
	   <!--<div class="col-75">
		<select id="country" name="country">
		  <option value="1">Australia</option>
		  <option value="2">Canada</option>
		  <option value="3">USA</option>
		</select>
	  </div>-->
	  
	  
	  
	<!--  <form:select path = "country.countryId" >
       <form:options items = "${countryList}" itemValue="countryId"  itemLabel="countryName" />
     </form:select>     
	 <form:input  path="country.countryId" />-->
	</div>
	<div class="row">
	  <div class="col-25">
	  </div>
	  <div class="col-75">
	    <label for="status">Active</label>
	    <form:select path = "userStatus" ><!--  name path must same in entities -->
			<option value="${user.userStatus}" selected disabled hidden >${user.userStatus}</option>
	  		<option value="Active">Active</option>
		  	<option value="Inactive">Inactive</option>
	  	</form:select>
		<!--<select id="userStatus" name="userStatus">
		  <option value=Waiting>Waiting</option>
		  <option value="Active">Active</option>
		  <option value="Inactive">Inactive</option>
		</select>
		 <label class="switch">
		  <input type="checkbox" checked>
			<span class="slider round"></span>
		</label>
		-->
		<label for="status">Admin Role</label>
		<form:select path = "adminRole" ><!--  name path must same in entities -->
			<option value="${user.adminRole}" selected disabled hidden >${user.adminRole}</option>
	  		<option value="Admin">Admin</option>
		  	<option value="User">User</option>
	  	</form:select>
		<!--
		<select id="adminRole" name="adminRole">
		  <option value="Admin">Admin</option>
		  <option value="User">User</option>
		</select>
		
		 <label class="switch">
		  <input type="checkbox" value="adminRole" checked>
			<span class="slider round"></span>
		</label>
		-->  
			  <button type="submit" class="btn btn-danger">note!! : this button for system admin only</button>
	  </div>
	</div>
	<div class="row">
	  <div class="col-25">
		<label for="psw">Old Password</label>
	  </div>
	  <div class="col-75">
		<input type="password" id="psw" name="psw" placeholder="Enter Old Password">
	  </div>
	</div>
	<div class="row">
	  <div class="col-25">
		<label for="psw">Change System Password</label>
	  </div>
	  <div class="col-75">
		<input type="password" id="psw" name="psw" placeholder="Enter Password">
	  </div>
	</div>
	<div class="row">
	  <div class="col-25">
		<label for="psw-repeat">Repeat Password</label>
	  </div>
	  <div class="col-75">
		<input type="password" id="psw-repeat" name="psw-repeat" placeholder="Repeat Password">
	  </div>
	</div>
	  <button type="submit" class="btn btn-dark">Back</button>
	  <button type="submit" class="btn btn-success">Save</button>
  </form:form>
</div>
<jsp:include page="../_menuDown.jsp"/>