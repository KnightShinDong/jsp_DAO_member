<%@ page import="java.sql.Timestamp" %>
<%@ page import="com.sdh.ex.*" %>
<%@ page import="java.lang.reflect.Member" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<% request.setCharacterEncoding("UTF-8");%>
<jsp:useBean id="dto" class="com.sdh.ex.MemberDto"/>
<jsp:setProperty name="dto" property="/" />
<% dto.setrDate(new Timestamp(System.currentTimeMillis()));
  MemberDao dao = MemberDao.getInmstance();
  if(dao.confirmId(dto.getId())==MemberDao.MEMBER_EXISENT) {
%>
      <script language="javascript">
        alert("아이디가 이미 존재합니다.");
        history.back();
      </script>
<%
  }else{
    int ri = dao.insertMember(dto);
    if(ri = MemberDao.MEMBER_JOIN_SUCCES){
      session.setAttribute("id", dto.getId());
    }
  }
%>
}


          <html>
<head>
    <title>joinOk</title>
</head>
<body>

</body>
</html>
