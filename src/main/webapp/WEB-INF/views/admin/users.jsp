<%@page import="com.services.home.entities.User"%>
<%@page import="java.util.List"%>
<%@ include file='/WEB-INF/views/admin/sidebar.jsp'%>
<div class="home-content">
      <div class="overview-boxes">
      <%List<User> list= (List<User>)request.getAttribute("users"); %>
      <%for(User user: list){ %>
        <div class="box">
          <div class="right-side">
        	<div class="address"><%=user.getEmail() %> </div>
        	<div class="date">Mobile Number: <%=user.getMobNumber() %>&nbsp;<i class='bx bxs-edit' ></i></div>
        	<div class="date">Password: <%=user.getPassword() %></div>
          </div>
       </div>
       <%} %>
    </div>
</div>
<script>
document.getElementById("customers").classList.add("active");
document.getElementById("dashboard").classList.remove("active");
</script>
<%@ include file='/WEB-INF/views/admin/footer.jsp'%>