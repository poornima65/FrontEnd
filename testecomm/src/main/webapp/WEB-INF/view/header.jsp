 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
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
            <li><a href="<c:url value='/admin/Product'/>">Manage Product</a></li>
            <li><a href="<c:url value='/admin/supplier'/> ">Manage Supplier</a></li>
          </ul>
        </li>
        
        <li><a href="<c:url value='/about'/> ">ABOUT</a></li>
        <li><a href="Contact-us">CONTACT Us</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
      <security:authorize access="isAuthenticated()">
					<li><span class="glyphicon"></span><h4 style="color:White;">
									Welcome <%= request.getUserPrincipal().getName() %></h4>
					</li>
					<security:authorize access="hasRole('ROLE_USER')">
								<li><a style="color: white; font-family: serif; font-size: large; "  href="<c:url value='/user/cart'/>">

							   <span class="glyphicon glyphicon-hand-right"></span>CART</a>
								</li>
								
								<p>Shopping-cart icon on a button:
                                     <button type="submit" class="btn btn-default btn-sm">
                                      <span class="glyphicon glyphicon-shopping-cart"></span> Shopping Cart
                                       </button>
								
					</security:authorize>
					<li><a style="color: white; font-family: serif; font-size: large; "  href='<c:url value="/logout1" />' class="btn btn_primary">
     						 <span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
		</security:authorize>
      
      
      <security:authorize access="isAnonymous()">
        <li><a href="Sign-up"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="<c:url value='/login' />"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
        </security:authorize>
      </ul>
    </div>
  </div>
</nav>
</div>


  