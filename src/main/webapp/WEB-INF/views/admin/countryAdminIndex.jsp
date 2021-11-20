<jsp:include page="../_menu.jsp"/>
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
            
<h2>Country Admin</h2>

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
	<th>Country</th>
	<th>Admin</th>
	<th>Add Country Admin</th>
  </tr>
  <tr>
  	<td>Thailand</td>
	<td>
	  Jill Smith (Jill@gmail.com) 
	  <a href="{{ url('/admin/countryAdminIndex')}}" class="btn btn-danger" role="button"><i class="fas fa-trash"></i></a> <br>
	  Rungfa Meekham (rungfa@gmail.com)
	  <a href="{{ url('/admin/countryAdminIndex')}}" class="btn btn-danger" role="button"><i class="fas fa-trash"></i></a>
	</td>
	<td>
	  <a href="${pageContext.request.contextPath}/admin/countryAdminAdd" class="btn btn-primary" role="button">Add New</a>
	</td>
  </tr>
  <tr>
  	<td>Singapore</td>
	<td>
	  Eve Jackson (Eve@gmail.com)
	  	  <a href="{{ url('/admin/countryAdminIndex')}}" class="btn btn-danger" role="button"><i class="fas fa-trash"></i></a>
	</td>
	<td>
	  <a href="{{ url('/admin/countryAdminAdd')}}" class="btn btn-primary" role="button">Add New</a>
	</td>
  </tr>
  <tr>
  	<td>Malaysia</td>
    <td>
	  Adam Johnson (Adam@gmail.com)
	  	  <a href="{{ url('/admin/countryAdminIndex')}}" class="btn btn-danger" role="button"><i class="fas fa-trash"></i></a>
	</td>
	<td>
	  <a href="{{ url('/admin/countryAdminAdd')}}" class="btn btn-primary" role="button">Add New</a>
	</td>
  </tr>
   <tr>
  	<td>China</td>
    <td>
	</td>
	<td>
	  <a href="{{ url('/admin/countryAdminAdd')}}" class="btn btn-primary" role="button">Add New</a>
	</td>
  </tr>
  <tr>
  	<td>India</td>
    <td>
	</td>
	<td>
	  <a href="{{ url('/admin/countryAdminAdd')}}" class="btn btn-primary" role="button">Add New</a>
	</td>
  </tr>
</table>

<jsp:include page="../_menuDown.jsp"/>