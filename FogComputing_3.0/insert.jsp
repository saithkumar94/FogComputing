
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
      <%
          String id=request.getParameter("id");
          String name=request.getParameter("name");
          String username=request.getParameter("username");
          String password=request.getParameter("password");
          String emailid=request.getParameter("emailid");
          String address=request.getParameter("address");
          String mobile=request.getParameter("mobile");
          
          session.setAttribute("userid", id);
          
          int fileid=Integer.parseInt(id);
          
          fogfunctions.computingactions insert=new fogfunctions.computingactions();
          
          insert.setId(fileid);
          insert.setName(name);
          insert.setUsername(username);
          insert.setPassword(password);
          insert.setEmailid(emailid);
          insert.setAddress(address);
          insert.setMobile(mobile);
          
          insert.insertdata();
        %>

                       <h2>CHALLENGING QUESTIONS</h2>
                    <form action="insertquestion.jsp" method="post">
                        <table width="100" align = "center">
                            
                            <tr><td><select name="question1">
                      

        <%
        
           try
           {
               Class.forName("com.mysql.jdbc.Driver");
               Connection connection=DriverManager.getConnection("jdbc:mysql://localhost/fogcomputing","root","");
               
               Statement stmt=connection.createStatement();
               String query="select * from questions";
               ResultSet rs=stmt.executeQuery(query);
               
               while(rs.next())
               {
                   %>
                   <option><%=rs.getString(2)%></option>
                   <%
               }
           }
           catch(Exception e)
           {
           }
       %>
                   
                           </select></td><td><input type="text" name="answer1"/></td></tr>
                            
                            <tr><td><select name="question2">
       <%
        
           try
           {
               Class.forName("com.mysql.jdbc.Driver");
               Connection connection=DriverManager.getConnection("jdbc:mysql://localhost/fogcomputing","root","");
               
               Statement stmt=connection.createStatement();
               String query="select * from questions";
               ResultSet rs=stmt.executeQuery(query);
               
               while(rs.next())
               {
                   %>
                   <option><%=rs.getString(2)%></option>
                   <%
               }
           }
           catch(Exception e)
           {
           }
       %>
                            <select></td><td><input type="text" name="answer2"/></td></tr>
                           
                            <tr><td><select name="question3">
                               <%
        
           try
           {
               Class.forName("com.mysql.jdbc.Driver");
               Connection connection=DriverManager.getConnection("jdbc:mysql://localhost/fogcomputing","root","");
               
               Statement stmt=connection.createStatement();
               String query="select * from questions";
               ResultSet rs=stmt.executeQuery(query);
               
               while(rs.next())
               {
                   %>
                   <option><%=rs.getString(2)%></option>
                   <%
               }
           }
           catch(Exception e)
           {
           }
       %>      
                            </select></td><td><input type="text" name="answer3"/></td></tr>
                           
                            <tr><td><select name="question4">
       <%
        
           try
           {
               Class.forName("com.mysql.jdbc.Driver");
               Connection connection=DriverManager.getConnection("jdbc:mysql://localhost/fogcomputing","root","");
               
               Statement stmt=connection.createStatement();
               String query="select * from questions";
               ResultSet rs=stmt.executeQuery(query);
               
               while(rs.next())
               {
                   %>
                   <option><%=rs.getString(2)%></option>
                   <%
               }
           }
           catch(Exception e)
           {
           }
       %>      
                                    
                                    
                            </select></td><td><input type="text" name="answer4"/></td></tr>
                           
                            <tr><td><select name="question5">
                                    
                                  <%
        
           try
           {
               Class.forName("com.mysql.jdbc.Driver");
               Connection connection=DriverManager.getConnection("jdbc:mysql://localhost/fogcomputing","root","");
               
               Statement stmt=connection.createStatement();
               String query="select * from questions";
               ResultSet rs=stmt.executeQuery(query);
               
               while(rs.next())
               {
                   %>
                   <option><%=rs.getString(2)%></option>
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
