<%--
  Created by IntelliJ IDEA.
  User: akdls
  Date: 2023-05-22
  Time: 오후 11:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<%if (session.getAttribute("ValidMem")!=null) {%>
  <jsp:forward page="main.jsp"></jsp:forward>
<%}%>

<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>login</title>
</head>
<body>
  <form action="/loginOk.jsp" method="post">
    아이디: <input type="text" name="id" value="<%if(session.getAttribute("id") != null)out.println(session.getAttribute("id"));%>"><br />
    비밀번호: <input type="password" name="pw" size="10">
    <input type="submit" value="로그인">&nbsp;&nbsp;
    <input type="button" value="회원가입" onclick="javascript:window.location='join.jsp'">
  </form>


</body>
</html>
