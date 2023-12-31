<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<center>
<h3 align="center">EDIT CITIZEN</h3>
<form action="updateCitizen">
        <input type="hidden" name="id" value="${citizen.id}">

	<table class="container">

		<tbody>
		    
			<tr>
				<td><label for="name">Citizen Name:</label></td>
				<td><input type="text" name="name" value="${citizen.name}" placeholder="ENTER NAME" ><br></td>				
			</tr>
			<tr>
			<td><label for="city">Citizen City:</label></td>
		    <td><select name="city" id="city">
		     <option value="${citizen.city}">${citizen.city}</option>
		     
              <option value="Mumbai">Mumbai</option>
              <option value="Pune">Pune</option>
              <option value="Hyderabad">Hyderabad</option>
              <option value="Chennai">Chennai</option>
              <option value="Banglore">Banglore</option>
              <option value="Punjab">Punjab</option>
            </select></td>
			</tr>
			
			<tr>
			<td><label for="doses">No. Of Doses</label></td>
		    <td><select name="doses" id="doses">
		    <option value="${citizen.doses}">${citizen.doses}</option>
		      <option value="0">None</option>
              <option value="1">1</option>
              <option value="2">2</option>

            </select></td>
			</tr>
			<tr>
			<td><label for="centerName">Clinic:</label></td>
		    <td>
                <select name="centerName" id="centerName">
                     <option value="${citizen.center.centerName}">${citizen.center.centerName}</option> 
                    <c:forEach items="${centers}" var="center">
                    
                        <option value="${center.centerName}">${center.centerName}</option>
                    </c:forEach>
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
