<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.services.home.entities.Booking"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Bookings</title>
<link
	href="<c:url value='https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css'/>"
	rel="stylesheet"
	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
	crossorigin="anonymous">
</head>
<body>
	<div class='container my-4'>
	<% List<Booking> list=((List<Booking>)(request.getAttribute("myBookings")));
	if(list.size()==0){ %>
	<h1>You Have not book a single service yet...</h1>
	<%}else{ %>
	<div class='card mx-auto my-4'>
     <div class='card-body'>
      <div class='table scrollit'>
       <table class='table table-hover'>
        <thead>
         <tr>
          <th>Id</th><th>Service</th><th>Date & Time</th><th>Status</th>
         </tr> 
        </thead>
        <tbody>
	<%
	for(Booking booking: list){
		String color="red";
	%>
	<tr>
        	  <td><%=booking.getId() %></td>
        	  <td><%=booking.getService() %></td>
        	  <td><%=booking.getDate()+", "+booking.getTime() %></td>
        	  <td style="color:<%=color%>;"><%=booking.getStatus() %></td>
        	</tr>
	<%}} %>
	</tbody>
       </table>
      </div>
     </div>
   </div> 
  </div>
</body>
</html>