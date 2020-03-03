<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<title>REDIS Test</title>
<link rel="stylesheet" href="resources/css/style.css">
<script src="/resources/js/jquery-3.3.1.min.js"></script>
<script>
$(document).ready({
});
</script>
</head>
<body>
<h4>Test</h4>
<table border="1">
<tr>
<th>열차</th>
<th>A1</th>
<th>A2</th>
<th>B1</th>
<th>B2</th>
<th>C1</th>
<th>C2</th>
<th>D1</th>
<th>D2</th>
</tr>
<c:forEach var="i" varStatus="num" items="${list }">
<tr>
<td>map00${num.count }</td>
<td>${i.A1 }</td>
<td>${i.A2 }</td>
<td>${i.B1 }</td>
<td>${i.B2 }</td>
<td>${i.C1 }</td>
<td>${i.C2 }</td>
<td>${i.D1 }</td>
<td>${i.D2 }</td>
</tr>
</c:forEach>
</table>






<!-- <div style="display: none;"> -->
<%-- <p id="map001">${map001 }</p> --%>
<%-- <p id="map002">${map002 }</p> --%>
<%-- <p id="map003">${map003 }</p> --%>
<%-- <p id="map004">${map004 }</p> --%>
<!-- </div> -->

<!-- <h4>map001</h4> -->
<!-- <div class="progress" style="height: 4px;"> -->
<!-- 	<div class="progress-bar" role="progressbar" style="width: 25%;" aria-valuenow="25"></div> -->
<!-- </div><br> -->

<!-- <h4>map002</h4> -->
<!-- <div class="progress" style="height: 4px;"> -->
<!-- 	<div class="progress-bar" role="progressbar" style="width: 25%;" aria-valuenow="25"></div> -->
<!-- </div><br> -->

<!-- <h4>map003</h4> -->
<!-- <div class="progress" style="height: 4px;"> -->
<!-- 	<div class="progress-bar" role="progressbar" style="width: 25%;" aria-valuenow="25"></div> -->
<!-- </div><br> -->

<!-- <h4>map003</h4> -->
<!-- <div class="progress" style="height: 4px;"> -->
<!-- 	<div class="progress-bar" role="progressbar" style="width: 25%;" aria-valuenow="25"></div> -->
<!-- </div><br> -->
</body>

</html>
