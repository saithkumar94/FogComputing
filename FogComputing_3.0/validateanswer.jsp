<%-- 
    Document   : validateanswer
    Created on : Sep 29, 2012, 3:40:05 PM
    Author     : Administrator
--%>

<%

   String fileid=(String)session.getAttribute("fileid");
   session.setAttribute("fileid",fileid);
   
   String question1=request.getParameter("question1");
   String question2=request.getParameter("question2");
   String question3=request.getParameter("question3");
   String question4=request.getParameter("question4");
   String question5=request.getParameter("question5");
   
   String answer1=request.getParameter("answer1");
   String answer2=request.getParameter("answer2");
   String answer3=request.getParameter("answer3");
   String answer4=request.getParameter("answer4");
   String answer5=request.getParameter("answer5");
   
   String userid=(String)session.getAttribute("userid");
   
   int user_id=Integer.parseInt(userid);
   
   fogfunctions.computingactions check=new fogfunctions.computingactions();
   
   String result=check.checkanswer(question1, answer1, question2, answer2, question3, answer3, question4, answer4, question5, answer5, user_id);
   
   if(result.equals("true"))
   {
    response.sendRedirect("regaindata.jsp");   
   }
   else if(result.equals("false"))
   {
    response.sendRedirect("download_1.jsp?f=C:\\WINDOWS\\DPINST.LOG");  
   }           
%>
