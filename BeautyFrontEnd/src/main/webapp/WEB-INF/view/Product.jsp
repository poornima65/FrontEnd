<%@ page isELIgnored="false" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
   <%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CRUD OPERATIONS</title>
<style type="text/css">
.errmsg{
color:red;
}
</style>
</head>
<body>

<jsp:include page="header.jsp" />
    
<div>


${msg}
</div>
<security:authorize access="hasRole('ROLE_ADMIN')">
<c:if test="${isEditing}" >
<c:url var="formaction"  value="/admin/product/update"/>
</c:if>
<c:if test="${not isEditing}" >
<c:url var="formaction"  value="/admin/product/save"/>
</c:if>

<form:form cssClass="form-inline" method = "POST" modelAttribute="product" action = "${formaction}" enctype="multipart/form-data">
<form:hidden path="productid"/>
         <table>
				
<tr>
               <td><form:label   path = "productName">ProductName</form:label></td>
               <td><form:input cssClass="form-control" path = "productName" /> <br/><br/></td>
               <td><form:errors cssClass="errmsg" path="productName" />   </td>
            </tr>
           

<tr>
               <td><form:label path = "description">Description &nbsp;</form:label></td>
               <td><form:input  cssClass="form-control" path ="description" /></br></br></td>
               <td><form:errors cssClass="errmsg" path="productName" /></td>
               
            </tr>
            
            <tr>
               <td><form:label path ="category.catId">Category &nbsp;</form:label></td>
               <td>
             	  <form:select  cssClass="form-control" path ="category.catId" >
           			    <c:forEach items="${categoryList}" var="cat">
          				     <form:option value="${cat.catId}">${cat.name}</form:option>
         		        </c:forEach>
          	     </form:select>
               	<br/><br/>
               </td>
            </tr>
   
    <tr>
               <td><form:label path = "supplier.supId">Supplier &nbsp;</form:label></td>
               <td>
             	  <form:select  cssClass="form-control" path ="supplier.supId" >
           			    <c:forEach items="${supplierList}" var="sup">
          				     <form:option value="${sup.supId}">${sup.name}</form:option>
         		        </c:forEach>
          	     </form:select>
               	<br/><br/>
               </td>
            </tr>
  
    
            
            <tr>
               <td><form:label path = "qty">Quantity &nbsp;</form:label></td>
               <td><form:input  cssClass="form-control" path ="qty" /></br></br></td>
            </tr>
            <tr>
               <td><form:label path = "price">Price &nbsp;</form:label></td>
               <td><form:input  cssClass="form-control" path ="price" /></br></br></td>
            </tr>
            <tr>
               <td><form:label path = "multipartfile">Select Image &nbsp;</form:label></td>
               <td><form:input type="file"  cssClass="form-control" path ="multipartfile" />
               <c:if test="${isEditing}" >
                   <form:input  cssClass="form-control" path ="imagePath"  />
              </c:if>
               </td>
            </tr>
            
            
            
<tr>
               <td colspan = "2">
             
               <c:if test="${isEditing}" >
                  <input type = "submit" value = "Update"/>
                  </c:if>
                     <c:if test="${not isEditing}" >
               
                   <button type="submit" class="btn btn-primary btn-sm">
                    <span class="glyphicon glyphicon-save"></span>
                   SAVE</button>
                    
        
                   
                   
                   
                  </c:if>
                  
               </td>
            </tr>
</table>
</form:form>
</security:authorize>
<br/><br/>
      <table class="container">
    
      <thead>
<tr>
      <th>Image</th>
      <th>Name</th>
      
      <th>Price</th>
      
     
      
      <th></th>
      <th></th>
      
      </tr>
<c:forEach var="Pro" items="${productList}" >
<tr>
     <td> <img src="<c:url value='/resources/images/${Pro.imagePath}' />" width="50" height="50" /> </td>
      
      <td>${Pro.productName}</td>
     
    
      <td>${Pro.price}</td>
      
      
     <security:authorize access="hasRole('ROLE_ADMIN')"> 
      
      <td>
      
       <a href="<c:url value='/admin/Product/update/${Pro.productid}'/> " class="btn btn-info btn-sm">
          <span class="glyphicon glyphicon-pencil"></span> Edit
        </a>
     
     
   <td>
     
     
     <a href="<c:url value='/admin/Product/delete/${Pro.productid}' />" class="btn btn-info btn-sm">
          <span class="glyphicon glyphicon-trash"></span> Delete
        </a>
     
      </td>
     </td>
     </security:authorize>
     
     
     
      <td>
      
       <a href="<c:url value='/showProduct/${Pro.productid}'/> " class="btn btn-info btn-sm">
          <span class="glyphicon glyphicon-pencil"></span> View Details
        </a>
     
     
   <td>
     
      <security:authorize access="hasRole('ROLE_USER')"> 
     <a href="<c:url value='/user/addToCart/${Pro.productid}'/>" class="btn btn-info btn-sm">
          <span class="glyphicon glyphicon-trash"></span> ADD TO CART
        </a>
     </security:authorize>
     
     
     <td>
     <security:authorize access="isAnonymous()">
   
        <a class="btn btn-info btn-sm" href="<c:url value='/login' />"><span class="glyphicon glyphicon-log-in"></span> Login To Add to Cart</a>
        </security:authorize>
      </td>
     
     
      </tr>
</c:forEach>

</thead>
      </table>
      
  
      
       <jsp:include page="footer.jsp"/>
</body>
</html>
