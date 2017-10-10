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
<c:url var="formaction"  value="/admin/Category/update"/>
</c:if>
<c:if test="${not isEditing}" >
<c:url var="formaction"  value="/admin/Category/save"/>
</c:if>
<center>
<form:form cssClass="form-inline" method = "POST" modelAttribute="category" action = "${formaction}">
<form:hidden path="id"/>
         <table>
				
<tr>
               <td><form:label   path = "name">Name</form:label></td>
               <td><form:input cssClass="form-control" path = "name" /> <br/><br/></td>
               <td><form:errors cssClass="errmsg" path="name" />   </td>
            </tr>
           

<tr>
               <td><form:label path = "description">Description &nbsp;</form:label></td>
               <td><form:input  cssClass="form-control" path ="description" /></br></br></td>
            </tr>
<tr>
               <td colspan = "2">
               <center>
               <c:if test="${isEditing}" >
                  <input type = "submit" value = "Update"/>
                  </c:if>
                     <c:if test="${not isEditing}" >
               
                   <button type="button" class="btn btn-primary btn-sm">
                    <span class="glyphicon glyphicon-save"></span>
                   SAVE</button>
                    
        
                   
                   
                   
                  </c:if>
                  </center>
               </td>
            </tr>
</table>
</form:form>
</center>
<br/><br/>
      <table class="table table-bordered">
      <thread>
<tr>
      
      <th>Name</th>
      
      <th>Description</th>
      <th></th>
      <th></th>
      
      </tr>
<c:forEach var="cat" items="${categoryList}" >
<tr>
     
      <td>${cat.name}</td>
     
      <td>${cat.description}</td>
      <td>
      
       <a href="<c:url value='/admin/Category/update/${cat.id}'/> " class="btn btn-info btn-sm">
          <span class="glyphicon glyphicon-pencil"></span> Edit
        </a>
     
     
   <td>
     
     
     <a href="<c:url value='/admin/Category/delete/${cat.id}' />" class="btn btn-info btn-sm">
          <span class="glyphicon glyphicon-trash"></span> Delete
        </a>
     
      </td>
     </td>
     
      </tr>
</c:forEach>

</thread>
      </table>
      
     
      
       <jsp:include page="footer.jsp"/>
</body>
</html>
