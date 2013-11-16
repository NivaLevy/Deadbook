<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<jsp:include page="top_of_page.jsp" />

<h2>הוספת מודעה חדשה</h2>

<%
String str = request.getParameter("whatFormSent");
str =  (str==null? "" : str);
if (str.equals("addNew")) { %>

<p>המודעה התקבלה ותתפרסם לאחר בדיקת צוות האתר</p>
<p>תודה</p>

<% } else { %>
<p>אנא מלאו וכו'.....</p>
<p></p>

<form action="addNew.jsp" id="contactForm" method="post">
<input type="hidden" name="whatFormSent" value="addNew">
<table style="width:auto; border: none;">
	<tr>
		<td><label for="txtFldName" >שם הנפטר</label></td>
		<td><input type="text" name="txtFldName" id="txtFldName" autofocus required></td>
	</tr>
	<tr>
		<td><label for="txtFldDateBorn">תאריך לידה</label></td>
		<td><input type="date" name="txtFldDateBorn" id="txtFldDateBorn" required><td>
	</tr>
	<tr>
		<td><label for="txtFldDateDied">תאריך פטירה</label></td>
		<td><input type="date" name="txtFldDateDied" id="txtFldDateDied" required><td>
	</tr>
	<tr>
		<td><label for="txtFldPhoto">העלאת תמונה</label></td>
		<td><input type="file" name="txtFldPhoto" id="txtFldPhoto"><td>
	</tr>
	<tr><td colspan=2><label for="txtFldContent">מילים לזכרו</label></td></tr>
	<tr><td colspan=2><textarea name="txtFldContent" rows="10" style="width: 300px;"></textarea></td></tr>
	<tr>
		<td><input type="submit" id="send_submit" value="שלח" onclick="return confirm('האם ברצונך לשלוח את הטופס?');"></td>
		<td><input type="reset" value="אפס" onclick="return confirm('פעולה זו תמחק את הטופס, להמשיך?');"></td>
	</tr>
</table>
 </form>
<% } %>
<jsp:include page="bottom_of_page.jsp" />