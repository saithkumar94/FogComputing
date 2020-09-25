<%-- 
    Document   : challenge
    Created on : Sep 29, 2012, 1:25:28 PM
    Author     : Administrator
--%>

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
                      <h2>CHALLENGING QUESTIONS</h2>
                     <form action="validateanswer.jsp" method="post">
                        <table width="100" align = "center">
                          <tr><td>
<%
            String username=(String)session.getAttribute("username");
            String password=(String)session.getAttribute("password");
     
             String fileid=(String)session.getAttribute("fileid");
             session.setAttribute("fileid",fileid);
            
             int userid=0;
        
           try
           {
               Class.forName("com.mysql.jdbc.Driver");
               Connection connection=DriverManager.getConnection("jdbc:mysql://localhost/fogcomputing","root","");
               
               
                Statement stmt1=connection.createStatement();
                String query1="select * from user_data where UserName='"+username+"' and Password='"+password+"'";
                ResultSet rs1=stmt1.executeQuery(query1);
                
                while(rs1.next())
                {
                   userid=rs1.getInt(1);   
                }
                
                String user_id=Integer.toString(userid);
                session.setAttribute("userid",user_id);
               
               Statement stmt=connection.createStatement();
               String query="select * from user_answers where UserId="+userid;
               ResultSet rs=stmt.executeQuery(query);
               
               while(rs.next())
               {
%>
                   <input type="text" name="question1" value="<%=rs.getString(2)%>" size="45"/>
<%
               }
           }
           catch(Exception e)
           {
           }
%>
</td><td><input type="text" name="answer1"/></td></tr>
<tr><td>
<%
        
           try
           {
               Class.forName("com.mysql.jdbc.Driver");
               Connection connection=DriverManager.getConnection("jdbc:mysql://localhost/fogcomputing","root","");
               
               Statement stmt=connection.createStatement();
               String query="select * from user_answers where UserId="+userid;
               ResultSet rs=stmt.executeQuery(query);
               
               while(rs.next())
               {
%>
                   <input type="text" name="question2" value="<%=rs.getString(4)%>" size="45"/>
<%
               }
           }
           catch(Exception e)
           {
           }
%>
</td><td><input type="text" name="answer2"/></td></tr>
<tr><td>
<%
        
                              
           try
           {
               Class.forName("com.mysql.jdbc.Driver");
               Connection connection=DriverManager.getConnection("jdbc:mysql://localhost/fogcomputing","root","");
               
               Statement stmt=connection.createStatement();
               String query="select * from user_answers where UserId="+userid;
               ResultSet rs=stmt.executeQuery(query);
               
               while(rs.next())
               {
%>
                   <input type="text" name="question3" value="<%=rs.getString(6)%>" size="45"/>
<%
               }
           }
           catch(Exception e)
           {
           }
%>      
</td><td><input type="text" name="answer3"/></td></tr>
<tr><td>
<%
        
           try
           {
               Class.forName("com.mysql.jdbc.Driver");
               Connection connection=DriverManager.getConnection("jdbc:mysql://localhost/fogcomputing","root","");
               
               Statement stmt=connection.createStatement();
               String query="select * from user_answers where UserId="+userid;
               ResultSet rs=stmt.executeQuery(query);
               
               while(rs.next())
               {
                   %>
                   <input type="text" name="question4" value="<%=rs.getString(8)%>" size="45"/>
                   <%
               }
           }
           catch(Exception e)
           {
           }
 %>      
</td><td><input type="text" name="answer4"/></td></tr>
<tr><td>
 <%
        
           try
           {
               Class.forName("com.mysql.jdbc.Driver");
               Connection connection=DriverManager.getConnection("jdbc:mysql://localhost/fogcomputing","root","");
               
               Statement stmt=connection.createStatement();
               String query="select * from user_answers where UserId="+userid;
               ResultSet rs=stmt.executeQuery(query);
               
               while(rs.next())
               {
                   %>
                   <input type="text" name="question5" value="<%=rs.getString(10)%>" size="45"/>
                   <%
               }
           }
           catch(Exception e)
           {
           }
       %>         
</td><td><input type="text" name="answer5"/></td></tr>
                            <tr><td align="center" colspan="2"><input type="submit" value="Submit"/></td></tr>
                        </table>
                     </form>

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
