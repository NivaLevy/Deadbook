<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<jsp:include page="top_of_page.jsp" />
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="peopleList.js"></script>

<h2>מודעות אבל</h2>
<p>לפניך רשימה של מודעות אשר נמצאות במערך jQuery כנדרש</p>	


<center>
<div class="MainTable" >	
<table id="peopleTable">
	<tr >
	
<script>
$( document ).ready(function() {
  $.each(arr, function(index,value)
  {
     $("#peopleTable").append("<td><div class=\"PersonTable\" onclick=\"javascript:window.location='person.jsp?pID=" + value.pID + "'\"><table ><tr><td>" + value.name + "</td></tr><tr><td id=\"profileImage\"><img src=\"" + value.pic_url + "\" alt=\"" + value.name + "\" width=\"150\" height=\"115\"></td></tr><tr><td >" + value.desc + "</td></tr></table></div></td>");
 	 $("#peopleTable").append((index % 2) ? "	</tr><tr >" : "");
  });
});
</script>

	</tr>
</table>
</div>
</center>


<jsp:include page="bottom_of_page.jsp" />