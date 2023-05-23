<%@ page import="java.sql.Timestamp" %>
<%@ page import="com.sdh.ex.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<% request.setCharacterEncoding("UTF-8");%>
<jsp:useBean id="dto" class="com.sdh.ex.MemberDto"/> <!--bean(재사용가능한 구성요소 or 객체)을 사용하기 태그 -->
<jsp:setProperty name="dto" property="*" />          <!--javaBean객체 속성 설정태그-매개변수값을 속성에 자동매핑 -->
<%
  dto.setrDate(new Timestamp(System.currentTimeMillis()));
  MemberDao dao = MemberDao.getInstance();
  if(dao.confirmld(dto.getId())==MemberDao.MEMBER_EXISTENT) {
%>
      <script language="javascript">
        alert("아이디가 이미 존재합니다.");
        history.back();
      </script>
<%
  }else{
    int ri = dao.insertMember(dto);
    if(ri == MemberDao.MEMBER_JOIN_SUCCESS){
      session.setAttribute("id", dto.getId());
%>
    <script language="javascript">
        alert("회원가입을 축하합니다.");
        document.location.href="login.jsp";
    </script>
<%
    }else {
%>
    <script language="JavaScript">
        alert("회원가입에 실패했습니다..");
        document.location.href="login.jsp";
    </script>

    }
}

<html>
<head>
    <title>joinOk</title>
</head>
<body>

</body>
</html>