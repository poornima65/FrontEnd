<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="header.jsp" %>
<%@ page isELIgnored="false" %>
<jsp:useBean id="now" class="java.util.Date" />

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>orders</h1>

            <p class="lead">orders confirmation</p>
        </div>

        <div class="container">
            <div class="row">

                             <div class="well col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 col-md-offset-3">

                       <div class="txt-center">
                            <h1>Receipt</h1>
                       </div>
                      
                  
                        <div class="row">
                            <div class="col-xs-6 col-sm-6 col-md-6">
                            </div>
                           
                        </div>

                        <div class="row">
                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        
                                        <td>Product</td>
                                        <td>#</td>
                                        <td class="text-center">Price</td>
                                        <td class="text-center">Total</td>
                                    </tr>
                                </thead>
                                <tbody>
                                <c:set var="grandTotal" value="0.0"></c:set>
                                <c:forEach var="orders" items="${orders}">
                                    <tr>
                                        <td class="col-md-9"><em>${orders.cart.product.productName}</em></td>
                                        <td class="col-md-1" style="text-align: center">${orders.qty}</td>
                                        <td class="col-md-1" style="text-align: center">${orders.price}</td>
                                        <td class="col-md-1" style="text-align: center">${orders.totalPrice}</td>
                                        <c:set var="grandTotal" value="${orders.totalAmt + orders.totalPrice }"></c:set>
                                    </tr>
                                </c:forEach>

                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td class="text-right">
                                        <h4><strong>Grand Total:</strong></h4>
                                    </td>
                                    <td class="text-center text-danger">
                                        <h4><strong>${orders.cart.totalAmt}</strong></h4>
                                    </td>
                                </tr>

                                </tbody>
                            </table>
                            <input type="submit" value="Confirm">
                        </div>
                    </div>
             
            </div>
        </div>

</body>
</html>