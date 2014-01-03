<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.mvc.entity.*" %>
<%if(request.getAttribute("msg")==null){
	
}else{
String msg = request.getAttribute("msg").toString();
String href = null;
if(request.getAttribute("href")==null){%>
<script type="text/javascript">
 alert(<%=msg%>);
</script>
<%	
}else{
	href = request.getAttribute("href").toString();%>
<script type="text/javascript">
 alert("<%=msg%>");
 location.href="<%=request.getContextPath() %>/<%=href%>";
</script>
<%
}
%>
<%} %>
<div class="header">
    <a class="logo" href="index.html"><img src="img/logo.png" alt="Aquarius -  responsive admin panel" title="Aquarius -  responsive admin panel"/></a>
    <ul class="header_menu">
        <li class="list_icon"><a href="#">&nbsp;</a></li>
    </ul>    
</div>

