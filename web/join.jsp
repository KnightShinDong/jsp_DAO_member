
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>join</title>
  <script type="text/javascript" src="/JS/members.js"></script>
  <!-- HTML5에서는 language속성이 제거되어 type속성ㅇ을 사용 -->
  <!--<script language="JavaScript" src="JS/members.js"></script>-->
</head>
<body>

  <form action="joinOk.jsp" method="post" name="reg_frm" onsubmit="infoConfirm()">
    아이디 : <input type="text" name="id" size="20"><br />
    비밀번호 : <input type="password" name="pw" size="20"><br />
    비밀번호 확인 : <input type="password" name="pw_check" size="20"><br />
    이름 : <input type="text" name="name" size="20">
    메일 : <input type="text" name="email" size="20"><br />
    주소 : <input type="text" name="address" size="20"><br />
  <input type="submit" value="회원가입"> &nbsp;&nbsp;<input type="reset" value="취소" onclick="javascript:window.location.href='login.jsp'">


  </form>
</body>
</html>
