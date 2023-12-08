<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Add citizen</title>

</head>
<body>

<center>
<form action="insertCitizen" method="POST">
    <h3 align="center"><b>ADD CITIZEN</b></h3>
    <table class="container">
     
        <tbody>

        <tr>
            <td><label for="name">Citizen Name:</label></td>
            <td><input type="text" name="name" placeholder="ENTER NAME"><br></td>

        </tr>
        <tr>
            <td><label for="city">Citizen City:</label></td>
            <td>
                <select name="city" id="city">
                    <option value="">--Please choose a city--</option>
                    <option value="Mumbai">Mumbai</option>
                    <option value="Pune">Pune</option>
                    <option value="Hyderabad">Hyderabad</option>
                     <option value="Chennai">Chennai</option>
                     <option value="Bangalore">Bangalore</option>
                    <option value="Punjab">Punjab</option>
                 </select>
            </td>
        </tr>
        <tr>
            <td><label for="centerName">Citizen Clinic:</label></td>          
             <td>
                <select name="centerName" id="centerName">
                    <option value="">--Please choose a clinic--</option>
                    <c:forEach items="${centers}" var="center">
                        <option value="${center.centerName}">${center.centerName}</option>
                    </c:forEach>
                    <option value="Jupiter">Jupiter</option>
                    <option value="City Hospital">City Hospital</option>
                    <option value="TATA Memorial">TATA Memorial</option>
                    
                </select>
            </td>
        </tr>
        </tbody>
        <tfoot>
        <tr>
            <th></th>
            <th><input type="submit" value="Submit"/></th>
        </tr>
        </tfoot>
    </table>
    
    <div class="error-message" align="center">
    <c:if test="${not empty message}">
        <span style="color: red;">${message}</span>
    </c:if>
</div>
</form>
</center>
</body>
</html>