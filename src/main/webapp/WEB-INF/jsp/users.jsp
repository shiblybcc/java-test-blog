<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../layout/taglib.jsp" %>
<table class="table">
	<tr>
		<th>User Name</th>
	</tr>
	<c:forEach items="${users }" var="user">
		<tr>
			<td>
			<a href='<spring:url value="/users/${user.id}.html" />'>
					${user.name } </a></td>
		</tr>
	</c:forEach>

</table>


