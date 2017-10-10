<%@ page isELIgnored="false" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
    
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
<c:if test="${isEditing}" >
<c:url var="formaction"  value="/admin/Supplier/update"/>
</c:if>
<c:if test="${not isEditing}" >
<c:url var="formaction"  value="/admin/Supplier/save"/>
</c:if>
<form:form method = "POST" modelAttribute="supplier" action = "${formaction}">
<form:hidden path="id"/>
         <table>
				
<tr>
               <td><form:label path = "name">Name</form:label></td>
               <td><form:input path = "name" /></td>
               <td><form:errors cssClass="errmsg" path="name" />   </td>
            </tr>

<tr>
               <td><form:label path = "description">Description</form:label></td>
               <td><form:input path = "description" /></td>
            </tr>
<tr>
               <td colspan = "2">
               <c:if test="${isEditing}" >
                  <input type = "submit" value = "Update"/>
                  </c:if>
                     <c:if test="${not isEditing}" >
                  <input type = "submit" value = "Save"/>
                  </c:if>
               </td>
            </tr>
</table>
</form:form>
      <table>
<tr>
      
      <th>Name</th>
      
      <th>Description</th>
      </tr>
<c:forEach var="cat" items="${supplierList}" >
<tr>
      <td>${cat.id}</td>
      <td>${cat.name}</td>
     
      <td>${cat.description}</td>
      <td><a href="<c:url value='/admin/Supplier/update/${cat.id}' /> ">Update</a></td>
      <td><a href="<c:url value='/admin/Supplier/delete/${cat.id}' /> ">Delete</a></td>
      </tr>
</c:forEach>
      </table>
      
     
      
       <jsp:include page="footer.jsp"/>
</body>
</html>
