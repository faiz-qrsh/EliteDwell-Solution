<%@page import="com.services.home.entities.ServiceProvider"%>
<%@page import="java.util.List"%>
<%@ include file='/WEB-INF/views/admin/sidebar.jsp'%>
<div class="home-content">
      <div class="overview-boxes">
      <%List<ServiceProvider> list= (List<ServiceProvider>)request.getAttribute("service-providers"); %>
      <%for(ServiceProvider serviceProvider: list){ %>
        <div class="box">
          <div class="right-side">
        	<div class="address"><%=serviceProvider.getName() %> </div>
        	<div class="date">Role: <%=serviceProvider.getRole() %>&nbsp;<i class='bx bxs-edit' ></i></div>
        	<div class="date">Phone Number: <%=serviceProvider.getPhoneNum() %></div>
          </div>
       </div>
       <%} %>
    </div>
</div>
<script>
document.getElementById("service-provider").classList.add("active");
document.getElementById("dashboard").classList.remove("active");
</script>
<%@ include file='/WEB-INF/views/admin/footer.jsp'%>