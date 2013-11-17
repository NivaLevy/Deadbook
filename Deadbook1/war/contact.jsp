<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<jsp:include page="top_of_page.jsp" /> 


<h2>צור קשר</h2>
<%
String str = request.getParameter("whatFormSent");
str =  (str==null? "" : str);
if (str.equals("contact")) { %>

<p>תודה <%=request.getParameter("txtFldName")%></p>	
<p>פנייתך נרשמה ותענה בהקדם האפשרי</p>
<p>תשובתנו תישלח לכתובת אותה ציינת בטופס (<%=request.getParameter("txtFldEmail")%>)</p>
<p>תודה,</p>
<p>צוות Deadbook</p>
<p>לחזרה לעמוד  הראשי לחץ <a href="index.jsp">כאן</a></p>

<% } else { %>
aaaaa
<p>אנו מודים לכם על התענינותכם באתר</p>	

<p>ניתן ליצור עימנו קשר באמצעות מילוי הטופס הבא:</p>
<p></p>

<form action="contact.jsp" id="contactForm" method="post">
<input type="hidden" name="whatFormSent" value="contact">
<table style="width:auto; border: none;">
	<tr>
		<td><label for="txtFldName" >שם מלא</label></td>
		<td><input type="text" name="txtFldName" id="txtFldName" autofocus required></td>
	</tr>
	<tr>
		<td><label for="txtFldPhone">מס' טלפון</label></td>
		<td><input type="text" name="txtFldPhone" id="txtFldPhone"></td>
	</tr>
	<tr>
		<td><label for="txtFldEmail">אימייל</label></td>
		<td><input type="email" name="txtFldEmail" id="txtFldEmail" placeholder="myname@gmail.com" required><td>
	</tr>
	<tr><td colspan=2><label for="txtFldContent">תוכן ההודעה</label></td></tr>
	<tr><td colspan=2><textarea name="txtFldContent" rows="10" style="width: 300px;"></textarea></td></tr>
	<tr>
		<td><input type="submit" id="send_submit" value="שלח" onclick="return confirm('האם ברצונך לשלוח את הטופס?');"></td>
		<td><input type="reset" value="אפס" onclick="return confirm('פעולה זו תמחק את הטופס, להמשיך?');"></td>
	</tr>
</table>
 </form>

<% } %>
<jsp:include page="bottom_of_page.jsp" />
