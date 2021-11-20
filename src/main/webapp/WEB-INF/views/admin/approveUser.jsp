<jsp:include page="../_menu.jsp"/>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
								<a class="nav-link" href="{{ url('/admin/adminIndex')}}">Manage User</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="{{ url('/admin/approveUser')}}">Approve(3)</a>
							</li>

							
                            <li class="nav-item">
                                <a class="nav-link" href="{{ url('/firstPage')}}">Sign out</a>
                            </li>                           
							
                        </ul>
                    </div>
                </div>
            </nav>

		
<h2>User management</h2>

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
    <th>Name</th>
	<th>Email</th>
	<th>Position</th>
	<th>Country</th>
	<th>Admin</th>
	<th>Active</th>
	<th>Detail</th>
  </tr>
   <c:forEach var="user" items="${userList}">
  <tr>
    <td>${user.firstName}</td>
	<td>${user.userName}</td>
	<td>${user.position.positionName} </td>
	<td>${user.country.countryName}</td>
	<td>${user.adminRole}</td>
	<td>${user.userStatus} </th>
	<th> <a href="editProfile/${user.userId}" class="btn btn-primary" role="button">Edit</a> </th>
  </tr>
   </c:forEach>
  <tr>
	<td>Jill Smith</td>
	<td>Jill@gmail.com</td>
	<td>Other</td>
	<td>Thailand</td>
	<td>-</td>
	<td>
  	  <label class="switch">
	    <input type="checkbox" checked>
	    <span class="slider round"></span>
	  </label>
	</td>
	<td>
	  <a href="{{ url('/admin/editProfile')}}" class="btn btn-primary" role="button">Edit</a>
	</td>
  </tr>
  <tr>
	<td>Eve Jackson</td>
	<td>Eve@gmail.com</td>
	<td>Plant Pathologist</td>
	<td>Singapore</td>
	<td> <i class="fa fa-user-secret" aria-hidden="true"></i> Admin</td>
	<td>
	  <label class="switch">
	    <input type="checkbox">
	    <span class="slider round"></span>
	  </label>
	</td>
	<td>
	  <a href="{{ url('/admin/editProfile')}}" class="btn btn-primary" role="button">Edit</a>
	</td>
  </tr>
  <tr>
    <td>Adam Johnson</td>
	<td>Adam@gmail.com</td>
	<td>Plant Phatologist</td>
	<td>Thailand</td>
	<td>-</td>
	<td>
	  <label class="switch">
		<input type="checkbox" checked>
		<span class="slider round"></span>
	  </label>
	</td>
	<td>
	  <a href="{{ url('/admin/editProfile')}}" class="btn btn-primary" role="button">Edit</a>
	</td>
  </tr>
</table>
* country admin could not edit /view system admin profile and country admin also set system admin role to anyone
<jsp:include page="../_menuDown.jsp"/>