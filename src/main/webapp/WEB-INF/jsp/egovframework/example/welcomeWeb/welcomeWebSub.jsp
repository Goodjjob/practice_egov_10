<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<script type="text/javascript">

$(document).ready(function() {
	
});
</script>

<c:set var="hanqValue" value="난 씨셋변수이다">
</c:set>

<div class="header">
   	<h4 class="title">여긴 인클루드 페이지에요~</h4>
   	<p class="category">기본 확실하게 다져서 갑시다~2</p>
</div>
<div class="content table-responsive table-full-width">
   	<table class="table table-hover table-striped">
       	<thead>
           	<th><c:out value='${hanqValue}'></c:out></th>
       		<th>Name</th>
       		<th>Salary</th>
       		<th>Country</th>
       		<th>City</th>
       	</thead>
       	<tbody>
        	<c:forEach items="${welcomeWebList}" var="welcomeWebList" varStatus="status">
	         	<tr>
	            	<td><c:out value="${welcomeWebList.id}"/></td>
	            	<td><c:out value="${welcomeWebList.userName}"/></td>
	            	<td><c:out value="${welcomeWebList.age}"/></td>
	            	<td><c:out value="${welcomeWebList.country}"/></td>
	            	<td><c:out value="${welcomeWebList.etc}"/></td>
	            </tr>
        	</c:forEach>
        </tbody>
    </table>
</div>                 