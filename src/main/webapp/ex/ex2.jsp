<%@ page import="org.example.w1.menu.PointVO" %><%--
  Created by IntelliJ IDEA.
  User: cooki
  Date: 2024-07-22
  Time: 오후 5:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%

    PointVO[] arr = {
      new PointVO(1,1),
      new PointVO(2,1),
      new PointVO(3,1)
    };


%>

<html>
<head>
    <title>Title</title>
</head>
<body>

<% for(int i = 0; i < arr.length; i++) { %>
  <li> <%= arr[i] %></li>
<% } %>

<hr/>

<% for(int i = 0; i < arr.length; i++) {
    PointVO temp = arr[i];
%>
<li> <%= temp %></li>
<% } %>

</body>
</html>
