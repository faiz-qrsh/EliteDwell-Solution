<%@ include file='/WEB-INF/views/admin/sidebar.jsp'%>
<div class="home-content">
      <div class="overview-boxes">
        <div class="box">
          <div class="right-side">
            <div class="service">Plumbing</div>
          </div>
       </div>
       <div class="box">
          <div class="right-side">
            <div class="service">Electrician</div>
          </div>
       </div>
       <div class="box">
          <div class="right-side">
            <div class="service">Tailory</div>
          </div>
       </div>
       <div class="box">
          <div class="right-side">
            <div class="service">Carpentary</div>
          </div>
       </div>
       <div class="box">
          <div class="right-side">
            <div class="service">Mechanic</div>
          </div>
       </div>
       <div class="box">
          <div class="right-side">
            <div class="service">Delivery</div>
          </div>
       </div>
       <div class="box">
          <div class="right-side">
            <div class="service">Cleansing</div>
          </div>
       </div>
       <div class="box">
          <div class="right-side">
            <div class="service">Washing</div>
          </div>
       </div>
       <div class="box">
          <div class="right-side">
            <div class="service">+</div>
          </div>
       </div>
    </div>
</div>
<script>
document.getElementById("services").classList.add("active");
document.getElementById("dashboard").classList.remove("active");
</script>
<%@ include file='/WEB-INF/views/admin/footer.jsp'%>