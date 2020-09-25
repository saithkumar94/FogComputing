<%-- 
    Document   : validatecloud
    Created on : Sep 28, 2012, 5:22:18 PM
    Author     : Administrator
--%>

<%
   
   String username=request.getParameter("username");
   String password=request.getParameter("password");
    
   fogfunctions.computingactions validate=new fogfunctions.computingactions();
   
   validate.setUsername(username);
   validate.setPassword(password);
   
   String result=validate.validateuser(username, password);
   
   if(result.equals("true") && username.equals("cloud"))
   {
       response.sendRedirect("fileupload.jsp");
   }
     //else if(result.equals("false")) 
   else
   {
       response.sendRedirect("cloud.jsp");
   }
   

%>