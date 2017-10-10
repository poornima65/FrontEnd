 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<div>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="index">Home</a></li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">MENU <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">lipstick</a></li>
            <li><a href="#">foundation</a></li>
            <li><a href="#">brush</a></li>
            <li><a href="#">eye product</a></li>
            <li><a href="#">compact powder</a></li>
            <li><a href="#">nail paints</a></li>
            
          </ul>
        </li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">ADMIN <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="<c:url value='admin/Category'/>">Manage Category</a></li>
            <li><a href="#">Manage Product</a></li>
            <li><a href="<c:url value='/admin/Supplier'/> ">Manage Supplier</a></li>
          </ul>
        </li>
        
        <li><a href="<c:url value='/about'/> ">ABOUT</a></li>
        <li><a href="Contact-us">CONTACT US</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="Sign-up"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="Login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav>
</div>


  