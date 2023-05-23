package com.sdh.ex;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class MemberDao {
    public static final int MEMBER_NONEXISTENT = 0;
    public static final int MEMBER_EXISTENT = 1;
    public static final int MEMBER_JOIN_FAILED =0;
    public static final int MEMBER_JOIN_SUCCESS =1;
    public static final int MEMBER_LOGIN_PW_NO_GOOD=0;
    public static final int MEMBER_LOGIN_SUCCESS =1;
    public static final int MEMBER_LOGIN_IS_NOT = -1;

    private static MemberDao instance = new MemberDao();
    private  MemberDao(){
    }
    public static MemberDao getInstance() {
        return instance;
    }

    public int insertMember(MemberDto dto) {
        int ri = 0;
        Connection connection = null;
        PreparedStatement pstmt = null;
        String query = "INSERT INTO memberex values(?,?,?,?,?,?)";
        //커넥션 풀: DB 연결된 커넥션을 미리 만들어 풀에 저장하는 기법
        try {
                connection =getConnection();
                pstmt = connection.prepareStatement(query);
                pstmt.setString(1, dto.getId());
                pstmt.setString(2, dto.getPw());
                pstmt.setString(3, dto.getName());
                pstmt.setString(4, dto.getEmail());
                pstmt.setTimestamp(5, dto.getrDate());
                pstmt.setString(6, dto.getAddress());
                ri = MemberDao.MEMBER_JOIN_SUCCESS;
        }catch (Exception e) {
            e.printStackTrace();
        }finally {
            try {
                if (pstmt != null) pstmt.close();
                if (connection != null) connection.close();
            }catch (Exception e2) {
                e2.printStackTrace();
            }
            return ri;
        }
        public int confirmld(String id) {
            int ri = 0;
            Connection conn = null;
            PreparedStatement pstmt = null;
            ResultSet rs = null;
            String query = "SELECT id FROM memberex WHERE id = ?";
            //커넥션 풀: DB 연결된 커넥션을 미리 만들어 풀에 저장하는 기법
            try {
                connection =getConnection();
                pstmt = connection.prepareStatement(query);
                pstmt.setString(1, id);
                rs = pstmt.executeQuery();

                if(rs.next()) {
                    ri = MemberDao.MEMBER_EXISTENT;
                }else {
                    ri= MemberDao.MEMBER_NONEXISTENT;
                }
            }catch (Exception e) {
                e.printStackTrace();
            }finally {
                try {
                    rs.close();
                    pstmt.close();
                    connection.close();
                }catch (Exception e2) {
                    e2.printStackTrace();
                }
                return ri;
            }

            public int userCheck(String id, String pw) {
                int ri = 0;
                String dbPw;

                Connection conn = null;
                PreparedStatement pstmt = null;
                ResultSet rs = null;
                String query = "SELECT pw FROM memberex WHERE id = ?";
                //커넥션 풀: DB 연결된 커넥션을 미리 만들어 풀에 저장하는 기법
                try {
                    connection =getConnection();
                    pstmt = connection.prepareStatement(query);
                    pstmt.setString(1, id);
                    rs= pstmt.executeQuery();

                    if(rs.next()) {
                        dbPw =rs.getString("pw");
                        if (dbPw.equals(pw)) {
                            ri = MemberDao.MEMBER_LOGIN_SUCCESS;  //로그인OK
                        }else {
                            ri = MemberDao.MEMBER_LOGIN_PW_NO_GOOD; //비번X
                        }
                        }else {
                            ri = MemberDao.MEMBER_LOGIN_IS_NOT; //회원X
                        }

                    }catch (Exception e) {
                        e.printStackTrace();
                    }finally {
                    try {
                        rs.close();
                        pstmt.close();
                        connection.close();
                    }catch (Exception e2) {
                        e2.printStackTrace();
                    }
                }
                        ri = MemberDao.MEMBER_EXISTENT;
                    }else {
                        ri= MemberDao.MEMBER_NONEXISTENT;
                    }
                }catch (Exception e) {
                    e.printStackTrace();
                }finally {
                    try {
                        rs.close();
                        pstmt.close();
                        connection.close();
                    }catch (Exception e2) {
                        e2.printStackTrace();
                    }
                    return ri;
                }

    public MemberDto getMember(String id){
            Connection connection = null;
        }




//        try {
//            DatabaseMetaData ConnectionPoolManager = null;
//            conn = ConnectionPoolManager.getConnection();
//            pstmt = conn.prepareStatement(query);
//        } catch (SQLException e) {
//            e.printStackTrace();


    }

    private Connection getConnection(){

        Context context =null;
        DataSource dataSource =null;
        Connection connection = null;

        try {
            context = new InitialContext();
            dataSource = (DataSource)context.lookup("java:comp/env/jdbc/Oracle11g");
            connection = dataSource.getConnection();
        }catch (Exception e) {
            e.printStackTrace();
        }
        return connection;
    }
}
