
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>



<html>
<head>
<meta charset="UTF-8">



<title>회원 가입</title>
</head>
<body>
	<h1>회원가입 하기</h1>
	
	<script>
		function JoinForm_Submit(form){
			
			form.loginId.value = form.loginId.value.trim();
			form.loginPw.value = form.loginId.value.trim();
			form.loginPwChk.value = form.loginId.value.trim();
			form.name.value = form.loginId.value.trim();
			
			if(form.loginId.value.length == 0){
				alert('아이디를 입력해주세요');
				//입력이 필요한 부분에 커서 자동 위치하기
				form.loginId.focus();
				return;
			}
			if(form.loginPw.value.length == 0){
				alert('비밀번호를 입력해주세요');
				//입력이 필요한 부분에 커서 자동 위치하기
				form.loginId.focus();
				return;
			}
			if(form.loginPwChk.value.length == 0){
				alert('비밀번호확인을 입력해주세요');
				//입력이 필요한 부분에 커서 자동 위치하기
				form.loginPwChk.focus();
				return;
			}
			if(form.name.value.length == 0){
				alert('이름을 입력해주세요');
				//입력이 필요한 부분에 커서 자동 위치하기
				form.name.focus();
				return;
			}
			
			if(form.loginPw.value != form.loginPwChk.value){
				alert("비밀번호를 확인해주세요");
				form.loginPw();
				return;
			}
			
			
			form.submit();
		}
	</script>
	
	
	<form action="doJoin" method="POST" onsubmit="JoinForm_Submit(this); return false;">
		<div>
			로그인 아이디 : <input name="loginId" type="text" placeholder="아이디를 입력해주세요"/>
		</div>
		<div>
			로그인 비밀번호: <input name="loginPw" type="password" placeholder="비밀번호를 입력해주세요"/>
		</div>
		<div>
			로그인 비밀번호 확인: <textarea name="loginPwChk" type="password" placeholder="비밀번호를 확인해주세요"></textarea>
		</div>
		<div>
			이름: <textarea name="name" placeholder="이름을입력해주세요"></textarea>
		</div>
		<div>
			<button type="submit">가입하기</button>
			<a href="../home/main">취소하기</a>
		</div>
		
	</form>
</body>
</html>