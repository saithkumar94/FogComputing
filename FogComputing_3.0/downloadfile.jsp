<%-- 
    Document   : downloadfile
    Created on : Sep 28, 2012, 6:39:09 PM
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
                      <a href="home.jsp">LogOut</a>
                       <h2> Download File</h2>
                       <table width="100" align = "center" cellspacing="4">
                           
        <%
            int id=0;
            String filename=null;
            
            String username=(String)session.getAttribute("username");
            String password=(String)session.getAttribute("password");
            
            session.setAttribute("username",username);
            session.setAttribute("password",password);
            
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection connection=DriverManager.getConnection("jdbc:mysql://localhost/fogcomputing","root","");
                
                Statement stmt=connection.createStatement();
                String query="select * from file_details";
                ResultSet rs=stmt.executeQuery(query);
                
                while(rs.next())
                {
                    
                    
          %>
          
           <form action="accessfile.jsp" method="post">
                   <tr><td><input type="text" name="fileid" value="<%=rs.getInt(1)%>" size="1"/></td><td><input type="text" name="filename" value="<%=rs.getString(2)%>" size="20"/></td><td><input type="submit" value="Download" size="4"/></td></tr>
           </form>  
           
          <%
             }
           }   
            catch(Exception e)
            {}                                             
        %>                   
            </table>
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
