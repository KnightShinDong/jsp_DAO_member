<%--
  Created by IntelliJ IDEA.
  User: akdls
  Date: 2023-05-22
  Time: 오후 11:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>join</title>
</head>
<body>

  <form action="joinOk.jsp" method="post" name="reg_grm">
    아이디 : <input type="text" name="id" size="20"><br />
    비밀번호 : <input type="password" name="pw" size="20"><br />
    비밀번호 확인 : <input type="password" name="pw_check" size="20"><br />
    이름 : <input type="text" name="name" size="20">
    메일 : <input type="text" name="email" size="20"><br />
    주소 : <input type="text" name="address" size="20"><br />
    <input type="button" value="회원가입" onclick="console.infoConfirm()">&nbsp;&nbsp;&nbsp;
    <input type="reset" value="취소" onclick="javascript:window.location='login.jsp'">
  </form>


</body>
</html>
