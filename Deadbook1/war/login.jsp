<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%
String str = request.getParameter("login");
str =  (str==null? "" : str);
 if ( str.equals("out") )
 {
	session.setAttribute("login","no");
	response.sendRedirect("index.jsp");

 } 
 else if (str.equals("yes") || session.getAttribute("login") == "yes")
 { 
	session.setAttribute("login","yes");
	response.sendRedirect("addNew.jsp");
 }
 else { %>

<jsp:include page="top_of_page.jsp" />


<h2>כניסת משתמשים</h2>
<p>הכניסה כרגע מתאפשרת רק באמצעות חשבון פייסבוק</p>	

<p>לכניסה לחץ על הכפתור</p>
<p><img src="fb_register.png" alt="הרשם לאתר עם חשבון הפייסבוק שלך"  onclick="alert('בנתיים נרשום שנכנסת, לא משנה מי אתה'); window.location='login.jsp?login=yes';" style="cursor: pointer; "/></p>
<p></p>

<jsp:include page="bottom_of_page.jsp" />

<% } %>