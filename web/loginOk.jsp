<%@page import="com.sdh.ex.MemberDto" %>
<%@page import="com.sdh.ex.MemberDao" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");

    String id = request.getParameter("id");
    String pw = request.getParameter("pw");

    MemberDao dao = MemberDao.getInstance();
    int checkNum = dao.userCheck(id,pw);
    if ((checkNum == -1)){
%>
    <script type="text/javascript">
        alert("아이디가 존재하지 않습니다.")
        history.go(-1);
    </script>
<%
    }else if (checkNum == 0){
%>
      <script type="text/javascript">        alert("비밀번호가 틀립니다.")
        history.go(-1);
    </script>
<%
    }else if(checkNum==1){
        MemberDto dto = dao.getMember(id);
        if (dto == null){
%>
          <script type="text/javascript">            alert("존재하지 않는 회원입니다.")
            history.go(-1);
        </script>
<%
    }else {
        String name = dto.getName();
        session.setAttribute("id",id);
        session.setAttribute("name", name);
        session.setAttribute("ValidMem","yes");
        response.sendRedirect("main.jsp");
    }
}
%>

<html>
<head>
    <title>loginOk</title>
</head>
<body>

</body>
</html>
