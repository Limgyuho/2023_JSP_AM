<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
	Map<String, Object> articleRow = (Map) request.getAttribute("articleRow");
%>

<html>
<head>
<meta charset="UTF-8">

<script>
	function a(){
		alert("가입을 축하합니다")
	}
	
</script>

<title>회원 가입</title>
</head>
<body>
	<h1>회원가입 하기</h1>
	
	<form action="dojoin" method="POST" onsubmit="a(); return false">
		<div>
			아이디 : <input id="" type="text" placeholder="아이디를 입력해주세요"/>
		</div>
		<div>
			아이디 재입력: <input id="" type="text" placeholder="아이디를 동일하게 입"/>
		</div>
		<div>
			비밀번호: <textarea pw="body" placeholder="비밀번호를 입력해주세요"></textarea>
		</div>
		<div>
			비밀번호 재입력: <textarea pw="body" placeholder="비밀번호를 입력해주세요"></textarea>
		</div>
		
	</form>
	<div>
		<a href="list">가입하기</a>
	</div>
</body>
</html>