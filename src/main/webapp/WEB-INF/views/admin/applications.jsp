<%@page import="com.services.home.entities.JobApplication"%>
<%@page import="java.util.List"%>
<%@ include file='/WEB-INF/views/admin/sidebar.jsp'%>
<div class="home-content">
      <div class="overview-boxes">
      <%List<JobApplication> list= (List<JobApplication>)request.getAttribute("applications"); %>
      <%if(list.isEmpty()){%>
      <h4>No recent job applications have been received.</h4>
      <%}else{ 
    	  for(JobApplication jobApplication: list){ %>
        <div class="box">
          <div class="right-side">
        	<div class="address"><%=jobApplication.getName() %> </div>
        	<div class="date">Phone Number: <%=jobApplication.getPhoneNum() %>&nbsp;<i class='bx bxs-edit' ></i></div>
        	<div class="date">Status: <%=jobApplication.getStatus() %></div>
        	<form action="approve-application/<%=jobApplication.getId()%>" method="post"><button>Approve</button></form>
          </div>
       </div>
       <%} 
       }
       %>
    </div>
</div>
<script>
document.getElementById("applications").classList.add("active");
document.getElementById("dashboard").classList.remove("active");
</script>
<%@ include file='/WEB-INF/views/admin/footer.jsp'%>