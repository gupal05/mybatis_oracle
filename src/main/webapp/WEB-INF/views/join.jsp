<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>회원가입</h1>
		<div>
			<label>ID : </label>
			<input type="text" name="userId" id="userId">
		</div>
		<div>
			<label>PW : </label>
			<input type="text" name="userPw" id="userPw">
		</div>
		<button onclick="te()">제출</button>
		
<script>

	function te(){
		var id = document.getElementById('userId');
		var pw = document.getElementById('userPw');
		var params = new URLSearchParams();
	    params.append(id.name, id.value);
	    params.append(pw.name, pw.value);
	    
		fetch("/join/result", {
			method: "POST",
	        headers: {
	            "Content-Type": "application/x-www-form-urlencoded",
	        },
	        body: params
	    })
	    .then(response => response.text())  // 서버에서 받은 응답을 텍스트로 변환
	    .then(data => {
	        alert(data);  // 응답을 alert로 표시
	    })
	    .catch(error => {
	        console.error("Error:", error);
	    });
	}

</script>
</body>
</html>