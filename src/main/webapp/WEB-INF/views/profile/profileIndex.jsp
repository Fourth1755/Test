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
                        	
                            <li class="nav-item">
                                <a class="nav-link" href="{{ url('/firstPage')}}">Sign out</a>
                            </li>                           
							
                        </ul>
                    </div>
                </div>
            </nav> 
<h2>User profile</h2>
<img src="{{ asset('images/imgPerson/avatarPic.png') }}" class="img-thumbnail" id="imgThumb"> 
<br><button type="submit" class="btn btn-primary">Change Image</button>

	<div>
		<table>
		  <tr>
			<th style="width:30%">First Name</th>
			<td style="width:70%">Jack</td>
		  </tr>
		  <tr>
			<th>Last Name</th>
			<td>Smith</td>
		  </tr>
		  <tr>
			<th>Position</th>
			<td>Plant pathologist</td>		
		  </tr>	
		  <tr>
			<th>Country</th>
			<td>Thailand</td>		
		  </tr>	  
		</table>
	</div>
<jsp:include page="../_menuDown.jsp"/>