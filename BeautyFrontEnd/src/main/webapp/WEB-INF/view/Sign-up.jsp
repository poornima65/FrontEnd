<%@ page isELIgnored="false" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

 <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
 <%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
 <%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head> 
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- Website Font style -->
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
		<link rel="stylesheet" href="style.css">
		<!-- Google Fonts -->
		<link href='https://fonts.googleapis.com/css?family=Passion+One' rel='stylesheet' type='text/css'>
		<link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>

		<title>sign up here</title>
		<style type="text/css">
.errmsg{
color:red;
}
</style>
		
</head>
<body>
<body style="background-color:orange">
<jsp:include page="header.jsp" />

 <center>
<c:url var="formaction"  value="/Sign-up"/>
 <form:form cssClass="form-inline" method = "POST" modelAttribute="customer" action = "${formaction}">
 
 <h4 style="color: black;">Sign Up Now</h4><hr></br>
 
 <table class="Container">
 
  <tr>
 <td><form:label   path = "name">Name</form:label></td>
 <td><form:input cssclass="form-control" path = "name" /></td>
  <td><form:errors cssClass="errmsg" path="name" /></td>
  </tr>

  <tr>
    <td><form:label   path = "address">Address</form:label></td>
     <td><form:input cssclass="form-control" path = "address" /></td>
     <td><form:errors cssClass="errmsg" path="address" /></td>
     </tr>
     
    </br></br>
    
     <tr>
      <td> <form:label   path = "email">Email Address</form:label></td>
   <td><form:input  cssclass="form-control" path="email" /></td>
   <td><form:errors cssClass="errmsg" path="email" /></td>
         </tr>
         
         </br></br> 
         
         <tr>
      <td><form:label   path = "password">Password</form:label></td>
      <td><form:input type="password" cssclass="form-control" path="password" /></td>
      <td><form:errors cssClass="errmsg" path="password" /></td>
  </tr>
  
  </br></br>
  
  <tr>      
   <td><form:label   path = "confirmPassword">Confirm Password</form:label></td>
  <td><form:input type="password" cssclass="form-control" path="confirmPassword" /></td>
  <td><form:errors cssClass="errmsg" path="confirmPassword" /></td>
  
  </tr>
  
  </br></br>
  <tr>
  <td><form:label   path = "phone">Phone Number</form:label></td>
  <td><form:input  cssclass="form-control" path="phone" /></td>
    <td><form:errors cssClass="errmsg" path="phone" /></td>
   </tr>
   
   </table>
   
    <button type="submit" class="btn btn-primary btn-sm">
       <span class="glyphicon glyphicon-save"></span>
          REGISTER</button>
         
      <a href="">Forgot Password?</a>
     </center>
     </form:form>
      </div>
      
       <center>
       
       <div class="social-login">
             
       </br>
            <p>- - - - - - - - - - - - - Sign In With - - - - - - - - - - - - - </p>
    		<ul>
            <li><a href=""><i class="fa fa-facebook"></i> Facebook</a></li>
            <li><a href=""><i class="fa fa-google-plus"></i> Google+</a></li>
            <li><a href=""><i class="fa fa-twitter"></i> Twitter</a></li>
            </ul>
             </div>
             </center>
             
           
      <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</br></br>
<jsp:include page="footer.jsp"/>

</body>
</html>