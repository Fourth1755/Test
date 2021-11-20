
<%@page import="ch.qos.logback.core.net.SyslogOutputStream"%>
<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<!-- Font Awesome JS -->
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ" crossorigin="anonymous"></script>
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY" crossorigin="anonymous"></script>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style>
/*
    DEMO STYLE
*/
@import "https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700";
body {
    font-family: 'Poppins', sans-serif;
    background: #fafafa;
}

p {
    font-family: 'Poppins', sans-serif;
    font-size: 1.1em;
    font-weight: 300;
    line-height: 1.7em;
    color: #999;
}

a,
a:hover,
a:focus {
    color: inherit;
    text-decoration: none;
    transition: all 0.3s;
}

.navbar {
    padding: 15px 10px;
    background: #fff;
    border: none;
    border-radius: 0;
    margin-bottom: 40px;
    box-shadow: 1px 1px 3px rgba(0, 0, 0, 0.1);
}

.navbar-btn {
    box-shadow: none;
    outline: none !important;
    border: none;
}

.line {
    width: 100%;
    height: 1px;
    border-bottom: 1px dashed #ddd;
    margin: 40px 0;
}

/* ---------------------------------------------------
    SIDEBAR STYLE
----------------------------------------------------- */

.wrapper {
    display: flex;
    width: 100%;
    align-items: stretch;
}

#sidebar {
    min-width: 250px;
    max-width: 250px;
    background: #7386D5;
    color: #fff;
    transition: all 0.3s;
}

#sidebar.active {
    margin-left: -250px;
}

#sidebar .sidebar-header {
    padding: 20px;
    background: #6d7fcc;
}

#sidebar ul.components {
    padding: 20px 0;
    border-bottom: 1px solid #47748b;
}

#sidebar ul p {
    color: #fff;
    padding: 10px;
}

#sidebar ul li a {
    padding: 10px;
    font-size: 1.1em;
    display: block;
}

#sidebar ul li a:hover {
    color: #7386D5;
    background: #fff;
}

#sidebar ul li.active>a,
a[aria-expanded="true"] {
    color: #fff;
    background: #6d7fcc;
}

a[data-toggle="collapse"] {
    position: relative;
}

.dropdown-toggle::after {
    display: block;
    position: absolute;
    top: 50%;
    right: 20px;
    transform: translateY(-50%);
}

ul ul a {
    font-size: 0.9em !important;
    padding-left: 30px !important;
    background: #6d7fcc;
}

ul.CTAs {
    padding: 20px;
}

ul.CTAs a {
    text-align: center;
    font-size: 0.9em !important;
    display: block;
    border-radius: 5px;
    margin-bottom: 5px;
}

a.signOut {
    background: #fff;
    color: #7386D5;
}

a.article,
a.article:hover {
    background: #6d7fcc !important;
    color: #fff !important;
}

/* ---------------------------------------------------
    CONTENT STYLE
----------------------------------------------------- */

#content {
    width: 100%;
    padding: 20px;
    min-height: 100vh;
    transition: all 0.3s;
}

/* ---------------------------------------------------
    MEDIAQUERIES
----------------------------------------------------- */

@media (max-width: 768px) {
    #sidebar {
        margin-left: -250px;
    }
    #sidebar.active {
        margin-left: 0;
    }
    #sidebarCollapse span {
        display: none;
    }
}

</style>
<style>
/*   table style  */
table {
  border-collapse: collapse;
  border-spacing: 0;
  width: 100%;
  border: 1px solid #ddd;
}

th, td {
  text-align: left;
  padding: 16px;
}

tr:nth-child(even) {
  background-color: #f2f2f2;
}

/* Toggle switch  */
.switch {
  position: relative;
  display: inline-block;
  width: 60px;
  height: 34px;
}

.switch input { 
  opacity: 0;
  width: 0;
  height: 0;
}

.slider {
  position: absolute;
  cursor: pointer;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: #ccc;
  -webkit-transition: .4s;
  transition: .4s;
}

.slider:before {
  position: absolute;
  content: "";
  height: 26px;
  width: 26px;
  left: 4px;
  bottom: 4px;
  background-color: white;
  -webkit-transition: .4s;
  transition: .4s;
}

input:checked + .slider {
  background-color: #2196F3;
}

input:focus + .slider {
  box-shadow: 0 0 1px #2196F3;
}

input:checked + .slider:before {
  -webkit-transform: translateX(26px);
  -ms-transform: translateX(26px);
  transform: translateX(26px);
}

/* Rounded sliders */
.slider.round {
  border-radius: 34px;
}

.slider.round:before {
  border-radius: 50%;
}

/*   Form  */
* {
  box-sizing: border-box;
}

input[type=text], input[type=password], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}

label {
  padding: 12px 12px 12px 0;
  display: inline-block;
}

input[type=submit] {
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: right;
}

input[type=submit]:hover {
  background-color: #45a049;
}

.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}

.col-25 {
  float: left;
  width: 25%;
  margin-top: 6px;
}

.col-75 {
  float: left;
  width: 75%;
  margin-top: 6px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
  .col-25, .col-75, input[type=submit] {
    width: 100%;
    margin-top: 0;
  }
}
</style>

<style>
/* Tooltip container */
.tooltip {
  position: relative;
  display: inline-block;
  border-bottom: 1px dotted black; /* If you want dots under the hoverable text */
}

/* Tooltip text */
.tooltip .tooltiptext {
  visibility: hidden;
  width: 120px;
  background-color: black;
  color: #fff;
  text-align: center;
  padding: 5px 0;
  border-radius: 6px;
 
  /* Position the tooltip text - see examples below! */
  position: absolute;
  z-index: 1;
}

/* Show the tooltip text when you mouse over the tooltip container */
.tooltip:hover .tooltiptext {
  visibility: visible;
}
</style>
<style>

/*  progress bar  */
.progress {
 height:20px;
}
</style>

<style>
/*    image Thumbnail */
#imgThumb {
  border: 1px solid #ddd;
  border-radius: 4px;
  padding: 5px;
  width: 150px;
}

#imgThumb:hover {
  box-shadow: 0 0 2px 1px rgba(0, 140, 186, 0.5);
}
</style>
<div class="wrapper">
        <!-- Sidebar  -->
        <nav id="sidebar">
            <div class="sidebar-header">
                <h2><font color="green">SYN</font><font color="orange">DER</font><font color="red">RA</font><font color="red">RA</font></h2>
				<h7>
					<font color="green">Syn</font><font color="#dddddd">genta</font> 
					<font color="orange">DER</font>
					<font color="red">Ra</font><font color="#dddddd">pid</font> 
					<font color="red">Ra</font><font color="#dddddd">ing</font> 
				</h7>
            </div>

            <ul class="list-unstyled components">
                <p>Fname Lname</p>
                <li>
                    <a href="${pageContext.request.contextPath}/welcome">Home</a>
                </li>
				<li>
                    <a href="#profileSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Profile</a>
                    <ul class="collapse list-unstyled" id="profileSubmenu">
                        <li>
                            <a href="{{ url('/profile/userProfile')}}">My profile</a>
                        </li>
                        <li>
                            <a href="{{ url('/profile/changePassword')}}">Change Password</a>
                        </li>
                    </ul>
                </li>

				<li>
                    <a href="#adminSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Admin</a>
                    <ul class="collapse list-unstyled" id="adminSubmenu">
                        <li>
                            <a href="${pageContext.request.contextPath}/admin/index">Manage User</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/admin/countryAdminIndex">Country Admin</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/admin/viewCountry">Country</a>
                        </li>
                    </ul>
                </li>

				<li>
                    <a href="#countryAdminSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Country Admin</a>
                    <ul class="collapse list-unstyled" id="countryAdminSubmenu">
                        <li>
                            <a href="/admin/index">Manage User</a>
                        </li>
                    </ul>
                </li>

                <li>
                    <a href="#trialSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Trial</a>
                    <ul class="collapse list-unstyled" id="trialSubmenu">
                        <li>
                            <a href="${pageContext.request.contextPath}/setup/index">Set Trial</a>
                        </li>
                        <li>
                            <a href="{{ url('/trial/uploadIndex')}}">Upload Image</a>
                        </li>
                        <li>
                            <a href="{{ url('/trial/approveIndex')}}">Approve Image</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#reportSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Report</a>
                    <ul class="collapse list-unstyled" id="reportSubmenu">
                        <li>
                            <a href="{{ url('/report/trialIndex')}}">Trial</a>
                        </li>
                        <li>
                            <a href="{{ url('/report/DERRRIndex')}}">DER Rapid Rating</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="{{ url('/DERRR/DERRRIndex')}}"><i class="fa fa-bolt" aria-hidden="true"></i> DER Rapid Rating</a>
                </li>
            </ul>

            <ul class="list-unstyled CTAs">
                <li>
                    <a href="{{ url('')}}" class="signOut">Sign out</a>
                </li>
            </ul>
        </nav>

        <!-- Page Content  -->
        <div id="content">
     
			
				

       