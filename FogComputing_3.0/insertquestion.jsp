<%-- 
    Document   : insertquestion
    Created on : Sep 28, 2012, 2:57:42 PM
    Author     : Administrator
--%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%
   

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
   
   
   fogfunctions.computingactions insert=new fogfunctions.computingactions();
   
   insert.setId(user_id);
   insert.setQuestion1(question1);
   insert.setAnswer1(answer1);
   insert.setQuestion2(question2);
   insert.setAnswer2(answer2);
   insert.setQuestion3(question3);
   insert.setAnswer3(answer3);
   insert.setQuestion4(question4);
   insert.setAnswer4(answer4);
   insert.setQuestion5(question5);
   insert.setAnswer5(answer5);
   
   insert.insertanswers();
   response.sendRedirect("home.jsp");
   
   %>