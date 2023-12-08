<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>VIEW CENTER</title>
<style>
        table {
            width: 60%; /* Set the overall width of the table */
            margin: 20px auto; /* Center the table on the page */
        }

        th, td {
            padding: 10px; /* Add padding to cells for better readability */
        }

        .view-edit-delete a {
            margin-right: 10px; /* Add space between the "View", "Edit", and "Delete" links */
        }
    </style>
</head>
<body>

                    <%@include file="dashboard.jsp" %>

             <h3 align="center">VACCINATION CENTER</h3>
<center>
    <table border="1">
        <thead>
        <tr>
        <td colspan="4">
        <form id="form-1" action="addCenter">
            <input type="submit" value="ADD CENTER" id="button-1" />
        </form>
        </td>
    </tr>
        </thead>
        <tbody>
        <tr>
            <th>ID</th>
            <th>NAME</th>
            <th>CITY</th>
            <th>ACTION</th>
        </tr>
        <c:forEach items="${centers}" var="center">
            <tr>
                <td>${center.id}</td>
                <td>${center.centerName}</td>
                <td>${center.city}</td>
                <center>
                <td class="view-edit-delete">              
                <a href="<c:url value='viewCenterById' />?id=${center.id}&centerName=${ center.centerName}">View</a>
                <a href="<c:url value='editCenter?id=${center.id}'/>">Edit</a>
                <a href="<c:url value='deleteCenter?id=${center.id}'/>">Delete</a>
                </center>
                </td>
            </tr>
        </c:forEach>
        </tbody>
       <tfoot>
        <tr>    
            <td colspan="4">Total ${centerCount} Vaccination Centers found.</td>
       </tr>
       </tfoot>
    </table>

    <div class="error-message" align="center">
    <c:if test="${not empty message}">
        <span style="color: red;">${message}</span>
    </c:if>
</div>
</center>
</body>
</html>
                