<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Fog Computing</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="style1.css" />
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

                            String filename=request.getParameter("filename");
                            String fileid=request.getParameter("id");
                            
                            session.setAttribute("fileid",fileid);
                            session.setAttribute("filename",filename);
                            
                            int file_id=Integer.parseInt(fileid);
                            String file="D:\\UploadedFiles";
                            
                            fogfunctions.computingactions insertfile=new fogfunctions.computingactions();
                            
                            insertfile.setFileid(file_id);
                            insertfile.setFilename(filename);
                            insertfile.setFilepath(file);
                            
                            insertfile.insertfiles();
                    %>
                    <h2>FILE UPLOAD</h2>
                    <form ENCTYPE="multipart/form-data" action="cloudfile.jsp" method="post">
                        <table width="100">
                            <tr><td></td><td></td></tr>
                            <tr><td></td><td></td></tr>
                            <tr><td><font color="white" size="2">File</font></td><td><input type="file" name="file"/></td></tr>
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
