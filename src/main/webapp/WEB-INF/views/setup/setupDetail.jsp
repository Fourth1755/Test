<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<jsp:include page="../_menu.jsp"/>
    
		<li class="nav-item active">
			<a class="nav-link" href="{{ url('/trial/setupIndex')}}">My Trial</a>
		</li>
		<li class="nav-item">
			<a class="nav-link" href="{{ url('/trial/setupImport')}}">Import</a>
		</li>

<form:form modelAttribute="trial" method="POST" action="../save" > 
<form:input path="trialId" type="hidden" /> 
<h3>TRIALID: ${trial.trialId}</h3>
<p>create date :${trial.createDate}</p>
<p class="text-right"><a href="{{ url('/trial/setupIndex')}}" class="btn btn-danger" role="button">Delete Trial</i></a></p>

<table  style="border:0px">
  <tr>
    <td>
		<table style = "height:100%">
		  <tr>
			<th>
			  Trial
			</th>
		  </tr>
		  <tr>
			<td>
	  Plot : Total = 20
	  <ul style="list-style-type:none;">
		<li>
		  <div class="progress" style="background:linear-gradient(to right, green 40%, yellow 40%,yellow 80%,gray 0)"></div>
		</li>		
		<li>
		  <div>
		    <i class="fa fa-square" aria-hidden="true" style="color:green"></i> 8 Approved (40%)
		    <i class="fa fa-square" aria-hidden="true" style="color:yellow"></i> 16 Upload (80%)
		    <i class="fa fa-square" aria-hidden="true" style="color:gray"></i> 4 No image (20%)
		  </div>
		</li>
	  </ul>
	</td>
		  </tr>
		  <tr>
			<td>
			
			 
			  Trial Status
			 <br>
			
				 <c:forEach var="ts" items="${trialStatusList}">
				
					<form:radiobutton path = "trialStatus" value = "${ts}" label = "${ts}"  checked="${trial.trialStatus == ts  ? 'checked' : '' }"  /></br>
				 </c:forEach>
			 
			
			  <ul style="list-style-type:none;">${trial.trialStatus}
				<li>			
					<div class="radio">
					  <label><input type="radio" name="optradio" checked> Open (<i class="fa fa-check" aria-hidden="true"></i> Upload, <i class="fa fa-check" aria-hidden="true"></i> Approve, <i class="fa fa-check" aria-hidden="true"></i> Visible)</label>
					</div>
					<div class="radio">
					  <label><input type="radio" name="optradio"> Lock Upload (<i class="fa fa-times" aria-hidden="true"></i> Upload, <i class="fa fa-check" aria-hidden="true"></i> Approve, <i class="fa fa-check" aria-hidden="true"></i> Visible)</label>
					</div>
					<div class="radio disabled">
					  <label><input type="radio" name="optradio"> Lock Approved (<i class="fa fa-times" aria-hidden="true"></i> Upload, <i class="fa fa-times" aria-hidden="true"></i> Approve, <i class="fa fa-check" aria-hidden="true"></i> Visible) </label>
					</div> 
					<div class="radio disabled">
					  <label><input type="radio" name="optradio"> Closed (<i class="fa fa-times" aria-hidden="true"></i> Upload, <i class="fa fa-times" aria-hidden="true"></i> Approve, <i class="fa fa-times" aria-hidden="true"></i> Team Visible)</label>
					</div> 
				</li>
			  </ul>
			  Active Status  				  
				<br>
		
				 <c:forEach var="ta" items="${trialActiveList}">
				
					<form:radiobutton path = "trialActive" value = "${ta}" label = "${ta}"  checked="${trial.trialActive == ta  ? 'checked' : '' }"  /></br>
				 </c:forEach>
			 
		
			  <ul style="list-style-type:none;">

				<li>			
					<div class="radio">
					  <label><input type="radio" name="optradio1" checked> <i class="fa fa-unlock" style="color:#50FF50" aria-hidden="true"></i> Active (Team can work up to their role)</label>
					</div>
					<div class="radio">
					  <label><input type="radio" name="optradio1"> <i class="fa fa-lock" style="color:#FF5050" aria-hidden="true"></i> Inactive (Team can not do nything)</label>
					</div>					
				</li>
			  </ul>
			  Plot Setting  				  
			  ${trial.plotSettingAutoLockUpload}
			  <ul style="list-style-type:none;">
				<li>			
				
				  <div class="radio">
					<form:checkbox path="plotSettingAutoLockUpload" value="${trial.plotSettingAutoLockUpload}" checked="${trial.plotSettingAutoLockUpload == 1  ? 'checked' : '' }"/>  Auto lock after uploaded
				    <label><input type="checkbox" name="checkbox1" value="" checked> Auto lock after uploaded</label>
				  </div>
				  <div class="radio">
					<form:checkbox path="plotSettingAutoLockApproved" value="${trial.plotSettingAutoLockApproved}" checked="${trial.plotSettingAutoLockApproved == 1  ? 'checked' : '' }"/>  Autolock after approved
				    <label><input type="checkbox" name="checkbox2" value="" checked> Autolock after approved</label> 
				  </div>	
				</li>
			  </ul>
			</td>
		  </tr>
		  <tr>
		  <td class="text-center">
		  <a href="{{ url('/trial/setupDetail')}}" class="btn btn-primary" role="button">Save</i></a>
		  </td>
		  </tr>
		</table>
	</td>
    <td style="vertical-align:top">
		<table>
		  <tr>
			<th>
			  Set Team
			</th>
		  </tr>
		  <tr>
			<td>
			  Owner
			  <ul style="list-style-type:none;">
				<li>Fname Lname(me)</li>
			  </ul>
			</td>
		  </tr>
		  <tr>
			<td>
			  <p class="text-right"><a href="{{ url('/trial/setupAddTeam')}}" class="btn btn-primary" role="button"><i class="fa fa-plus-square"></i> Add Team</a></p>
			  <table>
			    <tr>
			      <th>
				    Plant pathologist 
			      </th>
			      <td>				    
			      </td>
			    </tr>

				<c:forEach var="userPlant" items="${plantsList}">
			    <tr>
			      <td>
				    <i class="fa fa-user" aria-hidden="true"></i> ${userPlant.useraccount.firstName}
			      </td>
			      <td>
				    <a href="{{ url('/trial/setupDetail')}}" class="btn btn-danger" role="button"><i class="fas fa-trash"></i></a>
			      </td>
			    </tr>
				</c:forEach>
				<tr>
			      <td>
				    <i class="fa fa-user" aria-hidden="true"></i> Rungfa Meekham
			      </td>
			      <td>
				    <a href="{{ url('/trial/setupDetail')}}" class="btn btn-danger" role="button"><i class="fas fa-trash"></i></a>
			      </td>
			    </tr>
			  </table>
			  <br>
			  <table>
			    <tr>
			      <th>
				    Tiring team
			      </th>
			      <td>
			      </td>
			    </tr>
			   <c:forEach var="userTeam" items="${teamsList}">
			    <tr>
			      <td>
				    <i class="fa fa-user" aria-hidden="true"></i> ${userTeam.useraccount.firstName}
			      </td>
			      <td>
				    <a href="{{ url('/trial/setupDetail')}}" class="btn btn-danger" role="button"><i class="fas fa-trash"></i></a>
			      </td>
			    </tr>
				</c:forEach>
				<tr>
			      <td>
				    <i class="fa fa-users" aria-hidden="true"></i> Boonme Boonma
			      </td>
			      <td>
				    <a href="{{ url('/trial/setupDetail')}}" class="btn btn-danger" role="button"><i class="fas fa-trash"></i></a>
			      </td>
			    </tr>
			  </table>
			</td>
		  </tr>
		</table>
    </td>
  </tr>
</table>

<div class="line"></div>

<h4>Plot Detail</h4>
<div class="input-group">
  <div class="form-outline">
    <input id="search-focus" type="search" id="form1" class="form-control" />   
  </div>
  <button type="button" class="btn btn-primary">
    <i class="fas fa-search"></i>
  </button>
</div>


<p class="text-right"> Total : 20 plot </p>
<table>

  <tr>
	<th>Barcode</th>
	<th>PLTID</th>
	<th>REPNO</th>
	<th>Progress</th>
	<th>Current Status</th>
	<th>Set Status</th>
	<th>Set Active</th>
	<th>Delete Plot</th>
  </tr>
   
  <c:forEach var="eachPlot" items="${trial.plots}" varStatus="ep">

  <tr>
  	<td>${eachPlot.barcode}</td>
	<td>${eachPlot.plotId}</td>
	<td>${eachPlot.repNo}</td>
	<td>${eachPlot.plotProgress}</td>
	<td>
	  <i class="fa fa-lock" style="color:#FF5050" aria-hidden="true"></i> ${eachPlot.plotStatus}
	</td>
	<td>      

	  <form:select  path="plots[${ep.index}].plotStatus">
	
		<form:options items="${plotStatusList}"></form:options>
	  </form:select>
	  <!--<select id="status" name="status">
        <option value="1" selected>Open</option>
        <option value="2">Lock Upload</option>
        <option value="3">Lock Approve</option>
      </select>-->
	</td>
	<td>
	 <form:input path="plots[${ep.index}].plotId" type="hidden"   />    	
	 <!-- <form:checkbox path="${plots[ep.index].plotActive}" value="${eachPlot.plotActive}" checked="${eachPlot.plotActive == 'Active'  ? 'checked' : '' }"/>    	-->

	<form:checkbox path="plots[${ep.index}].plotActive" value="Active"  />    	

  
     	
	</td>
	 
	<td>

	  <a href="{{ url('/trial/setupDetail')}}" class="btn btn-danger" role="button"><i class="fas fa-trash"></i></a>
	</td>
 
  </tr>
  </c:forEach>
    
  <tr>
  	<td>DR235620002</td>
	<td>1002</td>
	<td>1</td>
	<td>No image</td>
	<td>
	  <i class="fa fa-unlock" style="color:#50FF50" aria-hidden="true"></i> Open
	</td>
	<td>      
	  <select id="status" name="status">
        <option value="1" selected>Open</option>
        <option value="2">Lock Upload</option>
        <option value="3">Lock Approve</option>
      </select>
	</td>
	<td>
	  <label class="switch">
	    <input type="checkbox" checked>
		<span class="slider round"></span>
	  </label>
	</td>
	<td>
	  <a href="{{ url('/trial/setupDetail')}}" class="btn btn-danger" role="button"><i class="fas fa-trash"></i></a>
	</td>
  </tr>
  <tr>
  	<td>DR235620003</td>
	<td>1003</td>
	<td>1</td>
	<td>Uploaded</td>
	<td>
	  <i class="fa fa-unlock" style="color:#50FF50" aria-hidden="true"></i> Open
	</td>
	<td>      
	  <select id="status" name="status">
        <option value="1" selected>Open</option>
        <option value="2">Lock Upload</option>
        <option value="3">Lock Approve</option>
      </select>
	</td>
	<td>
	  <label class="switch">
	    <input type="checkbox" checked>
		<span class="slider round"></span>
	  </label>
	</td>
	<td>
	  <a href="{{ url('/trial/setupDetail')}}" class="btn btn-danger" role="button"><i class="fas fa-trash"></i></a>
	</td>
  </tr>
  <tr>
  	<td>DR235620004</td>
	<td>1004</td>
	<td>1</td>
	<td>Uploaded</td>
	<td>
	  <i class="fa fa-unlock" style="color:#50FF50" aria-hidden="true"></i> Lock Upload
	</td>
	<td>      
	  <select id="status" name="status">
        <option value="1">Open</option>
        <option value="2" selected>Lock Upload</option>
        <option value="3">Lock Approve</option>
      </select>
	</td>
	<td>
	  <label class="switch">
	    <input type="checkbox" checked>
		<span class="slider round"></span>
	  </label>
	</td>
	<td>
	  <a href="{{ url('/trial/setupDetail')}}" class="btn btn-danger" role="button"><i class="fas fa-trash"></i></a>
	</td>
  </tr>
  <tr>
  	<td>DR235620005</td>
	<td>1005</td>
	<td>1</td>
	<td>Approved
	<td>
	  <i class="fa fa-lock" style="color:#FF5050" aria-hidden="true"></i> Lock Upload
	</td>
	<td>      
	  <select id="status" name="status">
        <option value="1">Open</option>
        <option value="2" selected>Lock Upload</option>
        <option value="3">Lock Approve</option>
      </select>
	</td>
	<td>
	  <label class="switch">
	    <input type="checkbox">
		<span class="slider round"></span>
	  </label>
	</td>
	<td>
	  <a href="{{ url('/trial/setupDetail')}}" class="btn btn-danger" role="button"><i class="fas fa-trash"></i></a>
	</td>
  </tr>
  <tr>
  	<td>DR235620006</td>
	<td>1006</td>
	<td>1</td>
	<td>Approved
	<td>
	  <i class="fa fa-unlock" style="color:#50FF50" aria-hidden="true"></i> Lock Approve
	</td>
	<td>      
	  <select id="status" name="status">
        <option value="1">Open</option>
        <option value="2">Lock Upload</option>
        <option value="3" selected>Lock Approve</option>
      </select>
	</td>
	<td>
	  <label class="switch">
	    <input type="checkbox" checked>
		<span class="slider round"></span>
	  </label>
	</td>
	<td>
	  <a href="{{ url('/trial/setupDetail')}}" class="btn btn-danger" role="button"><i class="fas fa-trash"></i></a>
	</td>
  </tr>
  <tr>
    <td></td>
    <td></td>
    <td></td>
	<td></td>
	<td></td>
	<td></td>
  	<td>
	 <button type="submit" class="btn btn-success">Save</button>
	 
	</td>
	<td>
	</td>
  </tr>
</table>
  </form:form >
<p>status: Active(Team can work up to their role), Inactive(Team cannot do anything)</p>
<p>Delete Plot : Delete Plot and Uploaded image</p>
