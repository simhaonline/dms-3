<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>

<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  -->
  
<!DOCTYPE html> 
<%@page import="javax.servlet.jsp.jstl.core.LoopTagSupport"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<s:url value="/assets/images/folder.png" 
				var="add_folder" />

<s:url value="/assets/images/dms_image.png" 
				var="folder" />
<s:url value="/assets/images/public_folder.png" 
				var="public_folder" />
<s:url value="/assets/images/add_file_25x25.png" 
				var="add_file" />
				
<s:url value="/assets/images/submit.png" 
				var="submit" />

<s:url value="/assets/js/dialog_box.js" 
				var="dialog_box" />
<s:url value="/assets/js/popup-file.js" 
				var="popup-file" />
<s:url value="/assets/js/jquery-ui-1-9-git.js" 
				var="jquery-ui-1-9-git.js" />
				
<s:url value="/assets/css/dialog_box.css" 
				var="dialog_box_css" />	
<s:url value="/assets/css/button.css" 
				var="button_css" />	
<s:url value="/assets/css/popup_file.css" 
				var="popup_file" />		
				
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6/jquery.min.js"></script> 				
<script src="//code.jquery.com/jquery-1.9.1.js"></script>
  <script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>


<link rel="stylesheet" type="text/css" href="${dialog_box_css}" />
<link rel="stylesheet" type="text/css" href="${button_css}" />
<link rel="stylesheet" type="text/css" href="${popup_file}" />

<script type="text/javascript" src="${dialog_box}"></script>
<script type="text/javascript" src="${popup-file}"></script>
<script type="text/javascript" src="${jquery-ui-1-9-git.js}"></script>

<title>Projects</title>
</head>
<body>
<div id="errors">
${userNotExist}
${task_partExist}
</div>
<br>
<table style="width: 100%; font-size: 12px;" border="0" id="searchTbl">




	<tr style="font-weight: bold;">
		<td width="100">task participant</td>
		<td width="100"></td>
		<td width="100"></td>
		<td width="100"></td>
	</tr>
	
	<c:forEach items="${prjtp}" var="prjtp" varStatus="status">
	
	<!-- 
	<c:if test="${status.count <2}">
	<c:set var="folderId" value="${prjtp.folderId}"></c:set>
	</c:if> -->
	<tr>
	<td width="100">
    ${prjtp.username}
    
    </td>
   <td width="100">
    <a href="javascript:deleteRole('<s:url value="/projectdelete"/>?id=${prjtp.projectId }');">
					<img title="Click to delete role" src="<s:url value="/assets/images/delete-icon.png"/>"
						style="width: 18px; height: 18px;" /></a>
   </td>
   <td width="100"></td>
   <td width="100"></td>
   
    
    </tr>
	</c:forEach>
</table>
<br>
    Type new user for current folder: <br>
    <form name='fold_as_link' method="post" action="/dms/settaskpr" >
    <input type="hidden" value="${folderId}" name="folderId" /> 

    <input type="text" name="username">
     <button>Send</button> 
    </form>


</body>
</html>