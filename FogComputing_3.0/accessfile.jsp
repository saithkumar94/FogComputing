<%-- 
    Document   : accessfile
    Created on : Sep 28, 2012, 7:32:32 PM
    Author     : Administrator
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Fog Computing</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="style2.css" />
</head>
<body>
<div id="wrapper">
  <div id="header">
    <div id="leaves"></div>
    <h1>MySiteName</h1>
  </div>
  <div id="menu">
    <div id="ladybug"></div>
    <ul>
      <li><a href="index.jsp"><span>Home</span></a></li>
      <li><a href="home.jsp"><span>User</span></a></li>
      <li><a href="cloud.jsp"><span>Cloud</span></a></li>
      <li><a href="services.jsp"><span>Key Aspect</span></a></li>
    </ul>
  </div>
  <div id="content">
    <div id="contentA">
      <div id="contentB">
        <div id="contentC">
          <div id="main">
            <div id="side">
             <div id="sideA">
              <div id="sideB">
                <div id="sideC">
                  <div id="sideD">
                         <a href="home.jsp">LogOut</a>
                       <h2> Download File</h2>
         <%
          
         
              String username=(String)session.getAttribute("username");
              String password=(String)session.getAttribute("password");
            
              session.setAttribute("username",username);
              session.setAttribute("password",password);
             
              String fileid=request.getParameter("fileid");
              
              session.setAttribute("fileid", fileid);
             
              int id=Integer.parseInt(fileid);
              String filepath=null;
              int userid=0;
              String file_name=null;
              int count=1;
              int num=0;
              
              try
              {
                Class.forName("com.mysql.jdbc.Driver");
                Connection connection=DriverManager.getConnection("jdbc:mysql://localhost/fogcomputing","root","");
                
                Statement stmt=connection.createStatement();
                String query="select * from file_details where fileid="+id;
                ResultSet rs=stmt.executeQuery(query);
                
                while(rs.next())
                {
                   file_name=rs.getString(2); 
                   filepath=rs.getString(3);
                } 
                
                
                Statement stmt1=connection.createStatement();
                String query1="select * from user_data where UserName='"+username+"' and Password='"+password+"'";
                ResultSet rs1=stmt1.executeQuery(query1);
                
                while(rs1.next())
                {
                   userid=rs1.getInt(1);   
                }
               
               Statement stmt2=connection.createStatement();
               String query2="select count(*) from user_files where UserId="+userid+" and FileId="+id;
               ResultSet rs2=stmt2.executeQuery(query2);
                
               while(rs2.next())
                {
                   num=rs2.getInt(1);
                   
                   if(num>=5)
                    {
                      response.sendRedirect("bogusfile.jsp");
                    }
                  else
                    {
                    PreparedStatement pstmt=connection.prepareStatement("insert into user_files values(?,?,?,?,?)");
               
                     pstmt.setInt(1,userid);
                     pstmt.setString(2,username);
                     pstmt.setInt(3,id);
                     pstmt.setString(4,file_name);
                     pstmt.setInt(5,count);
            
                      pstmt.executeUpdate();
                                    
                    }   

                      break;                                                                                                                                                                                               
                 }
                 
                }
             
         
              catch(Exception e)
              {
                  
              }
              
         %>
          
                      <a href="download_1.jsp?f=<%=filepath%>">Download File</a>
                    <div id="cleanup"></div>
                  </div>
                </div>
              </div>
            </div>
          </div>
            <h2></h2>
            <p><a href="http://all-free-download.com/free-website-templates/"></a></p>
           </div>
         
          <div id="clear"></div>
        </div>
      </div>
    </div>
  </div>
  <div id="footer">
    <p>&copy; Copyright <a href="http://all-free-download.com/free-website-templates/">MySiteName</a>. All Rights Reserved.</p>
  </div>
</div>
<div align=center>This template  downloaded form <a href='http://all-free-download.com/free-website-templates/'>free website templates</a></div></body>
</html>
