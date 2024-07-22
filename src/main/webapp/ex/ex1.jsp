<%--
  Created by IntelliJ IDEA.
  User: cooki
  Date: 2024-07-22
  Time: 오후 5:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%

    int[] arr = {41,52,63,74,85,96,17};

%>

<html>
<head>
    <title>Title</title>
</head>
<body>
  <ul>
      <% for(int i = 0; i < arr.length; i++) { %>
      <li> <%= arr[i]%></li>
      <% } %>

  </ul>
</body>
</html>
