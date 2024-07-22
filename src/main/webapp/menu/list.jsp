<%@ page import="org.example.w1.menu.MenuService" %>
<%@ page import="org.example.w1.menu.MenuVO" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: cooki
  Date: 2024-07-22
  Time: 오전 11:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  %>

<%
    List<MenuVO> menuVOList = MenuService.INSTANCE.getMenus();
%>

<html>
<head>
    <title>Title</title>
</head>
<body>
<style>
    .menulist {
        display: flex;
        flex-direction: row;
        flex-wrap: wrap;
        gap: 1em;
    }
    .menulist li {
        list-style: none;
    }
    .menulist li img {
        width: 10vw;
        min-width: 200px;
    }
</style>

 <ul class="menulist">
 <%
     for (int i = 0; i < menuVOList.size(); i++) {
 %>
     <li>
        <div>
            <a href="/menu/detail.jsp?no=1">
                <img src="/img/M1.jpeg">
            </a>
            <span><%=i%></span>
        </div>
     </li>
 <%
     }
 %>
 </ul>

</body>
</html>
