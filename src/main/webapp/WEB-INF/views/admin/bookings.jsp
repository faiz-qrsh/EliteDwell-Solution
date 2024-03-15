<%@page import="com.services.home.entities.Booking"%>
<%@page import="java.util.List"%>
<%@ include file='/WEB-INF/views/admin/sidebar.jsp'%>
<div class="home-content">
      <div class="overview-boxes">
      <%List<Booking> list= (List<Booking>)request.getAttribute("bookings"); %>
      <%for(Booking booking: list){ %>
        <div class="box">
          <div class="right-side">
        	<div class="service"><%=booking.getService() %></div>
        	<div class="address"><%=booking.getAddress() %>, <%=booking.getCity() %></div>
        	<div class="date"><%=booking.getTime() %>,  <%=booking.getDate() %></div>
          </div>
       </div>
       <%} %>
    </div>
</div>
<script>
document.getElementById("bookings").classList.add("active");
document.getElementById("dashboard").classList.remove("active");
</script>
<%@ include file='/WEB-INF/views/admin/footer.jsp'%>