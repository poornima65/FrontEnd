<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
     <%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
   <%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cart</title>
</head>
<body>

<jsp:include page="header.jsp" />

<div>
${msg }
</div>

 <table class="table table-bordered"> 
 
  
 
<c:forEach var="cart" items="${cartList}">
         
         <tr>
         
          <th>Name</th>
           
          <th>Price</th>
          
          <th>Quantity</th>
          
           </tr>
           
          <tr>
       <td>${cart.product.productName}</td>
       
       
       
        <td>${cart.product.price}</td>
        
        
       
        <td>${cart.qty}
        
        <div class="container">
	<div class="row">
		<div class="qty-changer">
            <button class="qty-change">-</button>
            <input class="qty-input form-group" type="number" value="1"/>
            <button class="qty-change">+</button>
        </div>
	</div>
</div>
        
    </td>
        
        </tr>
        
       <td>
     <a href="<c:url value='/user/cart/delete/${cart.cartid}' />" class="btn btn-info btn-sm">
          <span class="glyphicon glyphicon-trash"></span> Delete
        </a>
        </td>
        <th></th>
        <th></th>
    </c:forEach>
    
  <h2>Total Cost :${total}</h2>
  
 
        
  </table>
  
<center>
<tr>
  <td>
   <a href="<c:url value='/user/Shipping/checkout/' />" class="btn btn-info btn-sm">
          <span class="glyphicon glyphicon-checkout"></span> CheckOut
        </a>
  </td>
  <td>
   <a href="<c:url value='/Product' />" class="btn btn-info btn-sm">
          <span class="glyphicon glyphicon-shopping"></span> Shopping
        </a>
  </td>
  
  </tr>
</center>

</br></br>
<jsp:include page="footer.jsp"/>

</body>
</html>