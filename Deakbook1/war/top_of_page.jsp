<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
String isLoggedIn = (session.getAttribute("login")==null?"no":session.getAttribute("login").toString());

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<title>Deadbook</title>
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<link rel="stylesheet" href="design.css" type="text/css" />
<link rel="stylesheet" href="table.css" type="text/css" />
</head>
<body>
 
<div id="container">
	<div id="banner" onclick="javascript:window.location='index.jsp'">
		<div id='bannertitle'>Deadbook</div>
	</div>

	<div id="outer">
 		<div id="inner">
 			<div id="right">
<!-- start search -->
<div id="searchbox" style=" padding-right: 10px; padding-top: 10px">
<form name="SEARCH" action="search.jsp" method="get">

<input type="text" name="nameToSearch" id="nameToSearch" size="15" placeholder="הזן שם לחיפוש" /><input type="submit" value="חפש" onclick="alert('החיפוש אינו פעיל זמנית'); return false;" />

</form>
</div>
<!-- end search -->
<% if(isLoggedIn.equals("yes")) { %>
 <p style="display: block; font: bold 1.1em Verdana, Arial, Helvetica, sans-serif; text-decoration: none; text-align: center; padding: 10px;">שלום אלמוני</p>
 <div class="verticalmenu">
   <ul>
     <li><a href="list.jsp">רשימת מודעות</a></li>
   </ul>

   <ul>
     <li><a href="addNew.jsp">פרסום מודעה</a></li>
	 <li><a href="#">המודעות שלי</a></li>
	 <li><a href="#">מודעות מסומנות</a></li>
	 <li><a href="#">הגדרות פרופיל</a></li>
	 <li><a href="login.jsp?login=out">התנתק</a></li>
   </ul>
   
<% } else { %>
 <div class="verticalmenu">
   <ul>
     <li><a href="login.jsp">כניסה / הרשמה</a></li>
     <li><a href="list.jsp">רשימת מודעות</a></li>
   </ul>
<% } %>

   <ul>
	 <li><a href="contact.jsp">צור קשר</a></li>
   </ul>
 </div> 

			</div>
			<div id="content">
<!-- start content -->
