
<%@ page import="java.util.Map"%>
<%@ page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	List<Map<String, Object>> articleListMap = (List<Map<String, Object>>) request.getAttribute("articleListMap");
	int cPage = (int) request.getAttribute("page");
	int from = (int) request.getAttribute("from");
	int end = (int) request.getAttribute("end");
	int totalPage = (int) request.getAttribute("totalPage");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 리스트</title>
</head>
<body>
	<h1>게시물 리스트</h1>
	
	<div>
		<a href="write">글쓰기</a>
	</div>
	
	<table border="1">
		<colgroup>
			<col />
			<col width="200"/>
		</colgroup>
		<tr>
			<th>번호</th>
			<th>날짜</th>
			<th>제목</th>
		</tr>
		
		<% 
 		for(Map<String, Object> articleMap : articleListMap) {
		%>
			<tr>
				<td><%= articleMap.get("id") %></td>
				<td><%= articleMap.get("regDate") %></td>
				<td><a href="detail?id=<%= articleMap.get("id") %>"><%= articleMap.get("title") %></a></td>
			</tr>	
		<% 
 		}
 		%>
	</table>
	
	<style type="text/css">
		.paging > a.red {
			color : red;
			font-size: 1.2rem;
		}
	</style>
	
	<div class="paging">
		<%
// 		현재 페이지가 1보다 크면 아래 버튼 생성
		if (cPage > 1) {
		%>
			<a href="list?page=1">◀</a>
		<% 
		}
		%>
		<%
// 		보여지는 첫 페이지 부터 마지막 페이지까지
		for (int i = from; i <= end; i++) { 
		%>
<!-- 		번호를 선택 하면 현재 선택한 페이지가 빨간색으로나오며 이동 한다 -->
			<a class="<%= cPage == i ? "red" : ""%>" href="list?page=<%= i %>"><%= i %></a>
		<%
		} 
		%>
		<%
// 		현재 페이지가 전체 페이지 보다 작을때 
		if (cPage < totalPage) {
		%>
		아래의 버튼 생성
			<a href="list?page=<%= totalPage %>">▶</a>
		<% 
		}
		%>
	</div>
</body>
</html>