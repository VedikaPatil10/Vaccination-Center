<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>VIEW CITIZEN BY ID</title>

</head>
<body>
<center>
<%@include file="dashboard.jsp" %>

    <h2 align="center">Citizen Information</h2>
    <table border="1" >
        <tr>
            <td>ID</td>
            <td>${citizen.id}</td>
        </tr>
        <tr>
            <td>Name</td>
            <td>${citizen.name}</td>
        </tr>
        <tr>
            <td>City</td>
            <td>${citizen.city}</td>
        </tr>
        <tr>
            <td>No. of Dose</td>
            <td>${citizen.doses}</td>
        </tr>
        <tr>
            <td>Vaccination Status</td>
            <td>${citizen.vaccinationStatus}</td>
        </tr>
        <tr>
            <td>Vaccination Center</td>       
             <td >          
             <a href="<c:url value='/admin/vaccination/viewCenterById' />?id=${citizen.center.id}&centerName=${ citizen.center.centerName}">${citizen.center.centerName}</a>
             </td>
        </tr>
    </table>


  <div class="error-message" align="center">
    <c:if test="${not empty message}">
        <span style="color: red;">${message}</span>
    </c:if>
</div>
</center>
</body>
</html>
