<%-- 
    Document   : validateuser
    Created on : Sep 28, 2012, 4:31:57 PM
    Author     : Administrator
--%>

<%
   try
   {
        String username=request.getParameter("username");
        System.out.println(username);
        String password=request.getParameter("password");
        System.out.println(password);
         session.setAttribute("username",username);
    session.setAttribute("password",password);
    
   fogfunctions.computingactions validate=new fogfunctions.computingactions();
   
   validate.setUsername(username);
   validate.setPassword(password);
   
   String result=validate.validateuser(username, password);
if(!username.equals(null))
{
   if(!username.equals("cloud"))
             {

    if(result.equals("true"))
   {
       response.sendRedirect("downloadfile.jsp");
   }}}
     else 
   {
       response.sendRedirect("home.jsp");
     }}
   catch(Exception e)
                      {
       out.println(e);
       System.out.println(e);
             }

           

%>