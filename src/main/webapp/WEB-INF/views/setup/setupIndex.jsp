<jsp:include page="../_menu.jsp"/>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

		<li class="nav-item active">
			<a class="nav-link" href="{{ url('/trial/setupIndex')}}">My Trial</a>
		</li>
		<li class="nav-item">
			<a class="nav-link" href="{{ url('/trial/setupImport')}}">Import</a>
		</li>

<h3>My Trial</h3>
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
	<th>TRIALID</th>
	<th>Team</th>
	<th>Plot info</th>
	<th>Status</th>
	<th>Detail</th>
  </tr>
    <c:forEach var="trial" items="${trialList}">
  <tr>
  	<td>${trial.trialId}</td>
	<td>
	 <c:forEach var="eachUser" items="${trial.usertrials}">
	   <li>${eachUser.useraccount.firstName} <i class="fa fa-user" aria-hidden="true" data-toggle="tooltip" data-placement="top" title="Plant Pathologist"></i></li>
	 <!-- <ul>
	    <li>Jill Smith <i class="fa fa-user" aria-hidden="true" data-toggle="tooltip" data-placement="top" title="Plant Pathologist"></i></li>
	    <li>Rungfa Meekham <i class="fa fa-user" aria-hidden="true" data-toggle="tooltip" data-placement="top" title="Plant Pathologist"></i></li>
	  </ul>
	  <ul>

	    <li>Maka Bucha <i class="fa fa-users" aria-hidden="true" data-toggle="tooltip" data-placement="top" title="Tiring Team"></i></li>
	    <li>Boonme Boonma<i class="fa fa-users" aria-hidden="true" data-toggle="tooltip" data-placement="top" title="Tiring Team"></i></li>
	  </ul>
		-->
		</c:forEach>
	</td>
	<td>
	  Total 4 Plot
	  <ul>
		<li>3 uploaded</li>
		<li>2 approved</li>
	  </ul>
	</td>
	<td>
	  <i class="fa fa-unlock" style="color:green" aria-hidden="true"></i> ${trial.trialStatus}
	</td>
	<td>
	  <a href="setupDetail/${trial.trialId}" class="btn btn-primary" role="button"><i class="fa fa-edit" aria-hidden="true"></i>  click</a>
	</td>
  </tr>
  </c:forEach>
  <tr>
  	<td>21WEBCDIBBBT21S</td>
	<td>
	  <ul>
	    <li>Eve Jackson <i class="fa fa-user" aria-hidden="true" data-toggle="tooltip" data-placement="top" title="Plant Pathologist"></i></li>
	  </ul>
	  <ul>
	    <li>James Bond <i class="fa fa-users" aria-hidden="true" data-toggle="tooltip" data-placement="top" title="Tiring Team"></i></li>
	    <li>Will Smith<i class="fa fa-users" aria-hidden="true" data-toggle="tooltip" data-placement="top" title="Tiring Team"></i></li>
	  </ul>
	</td>
	<td>
	  Total 46 Plot
	  <ul>
		<li>46 uploaded <i class="fa fa-check" aria-hidden="true"></i></li>
		<li>16 approved</li>
	  </ul>
	</td>
	<td>
	  <i class="fa fa-unlock" style="color:green" aria-hidden="true"></i> Lock Upload
	</td>
	<td>
	  <a href="{{ url('/trial/setupDetail')}}" class="btn btn-primary" role="button"><i class="fa fa-edit" aria-hidden="true"></i></a>
	</td>
  </tr>
  <tr>
  	<td>21WEBCDICCCT21S</td>
	<td>
	  <ul>
	    <li>Eve Jackson <i class="fa fa-user" aria-hidden="true" data-toggle="tooltip" data-placement="top" title="Plant Pathologist"></i></li>
	  </ul>
	  <ul>
	    <li>James Bond <i class="fa fa-users" aria-hidden="true" data-toggle="tooltip" data-placement="top" title="Tiring Team"></i></li>
	    <li>Will Smith<i class="fa fa-users" aria-hidden="true" data-toggle="tooltip" data-placement="top" title="Tiring Team"></i></li>
	  </ul>
	</td>
	<td>
	  Total 23 Plot
	  <ul>
		<li>23 uploaded<i class="fa fa-check" aria-hidden="true"></i></li>
		<li>6 approved</li>
	  </ul>
	</td>
	<td>
	  <i class="fa fa-lock" style="color:red" aria-hidden="true"></i> Lock Approve
	</td>
	<td>
	  <a href="{{ url('/trial/setupDetail')}}" class="btn btn-primary" role="button"><i class="fa fa-edit" aria-hidden="true"></i></a>
	</td>
  </tr>
  <tr>
  	<td>21WEBCDIDDDT21S</td>
	<td>
	  <ul>
	    <li>Eve Jackson <i class="fa fa-user" aria-hidden="true" data-toggle="tooltip" data-placement="top" title="Plant Pathologist"></i></li>
	  </ul>
	  <ul>
	    <li>James Bond <i class="fa fa-users" aria-hidden="true" data-toggle="tooltip" data-placement="top" title="Tiring Team"></i></li>
	    <li>Will Smith<i class="fa fa-users" aria-hidden="true" data-toggle="tooltip" data-placement="top" title="Tiring Team"></i></li>
	  </ul>
	</td>
	<td>
	  Total 64 Plot
	  <ul>
		<li>64 uploaded <i class="fa fa-check" aria-hidden="true"></i></li>
		<li>64 approved <i class="fa fa-check" aria-hidden="true"></i></li>
	  </ul>
	</td>
	<td>
	  <i class="fa fa-lock" style="color:red" aria-hidden="true"></i> Closed
	</td>
	<td>
	  <a href="{{ url('/trial/setupDetail')}}" class="btn btn-primary" role="button"><i class="fa fa-edit" aria-hidden="true"></i></a>
	</td>
  </tr>
</table>
