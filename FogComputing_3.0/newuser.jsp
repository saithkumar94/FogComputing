<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Fog Computing</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="stylenew.css" />
<script src="validate.js">
</script>
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
                      
                        int Count=0;
                        int id=0,id1=0;
                        try
                        {
                        
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection connection=DriverManager.getConnection("jdbc:mysql://localhost/fogcomputing","root","");
            
                        Statement stmt=connection.createStatement();
                        Statement stmt1=connection.createStatement();
            
                        String query="select count(*) from user_data";
                        String query1="select * from user_data order by UserId desc";
            
                        ResultSet rs=stmt.executeQuery(query);
                        ResultSet rs1=stmt1.executeQuery(query1);
            
                        while(rs.next())
                           {
                             Count=rs.getInt(1);
                           }
            
                        while(rs1.next())
                          {
                             id=rs1.getInt(1);
                             break;
                          }
            
                        if(Count==0)
                          {  
                            id=1;
                          }   
                        else
                          {
                            id=id+1;
                          }
                        }
                    catch(Exception e)
                     {
                     }                                                                                                                        
                      %>
                      
                      
                    <h2>REGISTER</h2>
                    <form action="insert.jsp" name="f1" method="post" onsubmit="return validate(f1);">
                        <table width="100">
                             <tr><td><font color="white" size="1">UserId</font></td><td><input type="text" name="id" value="<%=id%>"/></td></tr>
                             <tr><td></td><td></td></tr>
                             <tr><td></td><td></td></tr>
                             <tr><td><font color="white" size="1">Name</font></td><td><input type="text" name="name"/></td></tr>
                             <tr><td></td><td></td></tr>
                             <tr><td></td><td></td></tr>
                             <tr><td><font color="white" size="1">UserName</font></td><td><input type="text" name="username"/></td></tr>
                             <tr><td></td><td></td></tr>
                             <tr><td></td><td></td></tr>
                             <tr><td><font color="white" size="1">Password</font></td><td><input type="password" name="password"/></td></tr>
                             <tr><td></td><td></td></tr>
                             <tr><td></td><td></td></tr>
                             <tr><td><font color="white" size="1">EMail Id</font></td><td><input type="text" name="emailid"/></td></tr>
                             <tr><td></td><td></td></tr>
                             <tr><td></td><td></td></tr>
                             <tr><td><font color="white" size="1">Address</font></td><td><input type="text" name="address"/></td></tr>
                             <tr><td></td><td></td></tr>
                             <tr><td></td><td></td></tr>
                             <tr><td><font color="white" size="1">Mobile</font></td><td><input type="text" name="mobile"/></td></tr>
                             <tr><td></td><td></td></tr>
                             <tr><td></td><td></td></tr>
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
