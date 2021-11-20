<jsp:include page="../_menu.jsp" />	

<h2>Thailand</h2>
<p>Add Country Admin</p>



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
	<th>Active</th>
	<th>Admin</th>
  </tr>
  <tr>
	<td>Jill Smith</td>
	<td>Jill@gmail.com</td>
	<td>Pathologist</td>
	<td>Thailand</td>
	<td><i class="fa fa-lock" aria-hidden="true" style="color:red"></i>
	</td>
	<td>
	  <a href="${pageContext.request.contextPath}/admin/countryAdminAddAdmin" class="btn btn-primary" role="button">Add</a>
	</td>
  </tr>
  <tr>
	<td>Eve Jackson</td>
	<td>Eve@gmail.com</td>
	<td>Pathologist</td>
	<td>Singapore</td>
	<td><i class="fa fa-unlock" aria-hidden="true" style="color:green"></i></td>
	<td>
	  <a href="${pageContext.request.contextPath}/admin/countryAdminAddAdmin" class="btn btn-primary" role="button">Add</a>
	</td>
  </tr>
  <tr>
    <td>Adam Johnson</td>
	<td>Adam@gmail.com</td>
	<td>Other</td>
	<td>Thailand</td>
	<td><i class="fa fa-unlock " aria-hidden="true" style="color:green"></i></td>
	<td>
	  <a href="${pageContext.request.contextPath}/admin/countryAdminAddAdmin" class="btn btn-primary" role="button">Add</a>
	</td>
  </tr>
</table>


<jsp:include page="../_menuDown.jsp" />
