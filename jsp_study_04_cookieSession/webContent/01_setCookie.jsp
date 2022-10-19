<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
	<header>
		<h1>cookies와 session</h1>
	</header>
	
	<section>
	<h2>▶ cookies란?</h2>
	<div class="contentWrap">
	쿠키란 웨을 사용하는 유저들에게 편리함을 제공하거나 이를 이용해 정보를 수집할 수 있는 브라우저에 저장하게 되는 작은 테스트이다.
	쿠키의 크기는 4kb이하로 제한되어 있고 300개까지의 데이터 정보 배열을 저장할 수 있다.(약 1.2MB)
	</div>
	
	<h2>▶ session이란?</h2>
	<div class="contentWrap">
	세션이란 쿠키의 단점인 보안 이슈를 해결하기 위해 나온 방법이다.
	</div>
	
	<h2>▶ cookies와 session의 차이점</h2>
	<div class="contentWrap">
	<ol>
	<li><b>저장위치</b> : 쿠키는 로컬에, 세션은 로컬과 서버에 저장됩니다.</li>
	<li><b>보안</b> : 쿠키는 로컬에 위치해 탈취와 변조가 가능하지만, 세션은 ID값만 가지고 있고 서버에 저장이 되어있기 때문에 상대적으로 안전하다.</li>
	<li><b>Lifecycle</b> : 쿠키는 브라우저를 종료해도 파일을 남아있지만 세션은 브라우저 종료시 세션을 삭제합니다.</li>
	<li><b>속도</b> : 쿠키는 내 컴퓨터에서 처리가 되는거고 세션은 실행시마다 서버에서 처리해야 하기 때문에 비교적 쿠키가 빠르다.</li>
	</ol>
	</div>
	
	</section>
	
	<section>
	<h2>▶ cookies를 사용법</h2>
	<div class="contentWrap">
	<ol>
	<li>쿠키 객체를 생성</li>
	<li>쿠키 속성 값 가져온다</li>
	<li>response 객체의 addCookie()메소드를 호출하며 쿠키 추가</li>
	</ol>
	</div>
	
	<h2>▶cookies객체와 같이 사용되는 메소드</h2>
	<div class="contentWrap">
	<table>
	<tr>
		<th>메소드</th>
		<th>설명</th>
	</tr>
	
	<tr>
		<td>void setComment(String)</td>
		<td>쿠키에 대한 설명을 설정하는 내용</td>
	</tr>
	
	<tr>
		<td>void setDomain(String)</td>
		<td>쿠키의 유효한 도메인 설정</td>
	</tr>
	
	
	<tr>
		<td>void setMaxAge(int)</td>
		<td>쿠키의 유효한 기간을 설정한다</td>
	</tr>
	
	<tr>
		<td>void setPath(String)</td>
		<td>쿠키의 유효한 디렉토리를 설정</td>
	</tr>
	
	<tr>
		<td>void setSecure(boolean)</td>
		<td>쿠키의 보안을 설정</td>
	</tr>
	
	<tr>
		<td>void setValue(String)</td>
		<td>쿠키의 값을 설정</td>
	</tr>
	
	<tr>
		<td>void setVersion(int)</td>
		<td>쿠키의 버전을 설정</td>
	</tr>

	<tr>
		<td>void getComment()</td>
		<td>쿠키에 대한 설명을 알려줌</td>
	</tr>
	
	<tr>
		<td>void getDomain()</td>
		<td>쿠키의 유효한 도메인 정보를 가져온다</td>
	</tr>
	
	
	<tr>
		<td>void getMaxAge()</td>
		<td>쿠키의 유효한 기간을 알려줌</td>
	</tr>
	
	<tr>
		<td>void getName()</td>
		<td>쿠키의 이름을 알려줌</td>
	</tr>
	
	<tr>
		<td>void getPath()</td>
		<td>쿠키의 유효한 디렉토리를 알려줌</td>
	</tr>
	
	<tr>
		<td>void getSecure()</td>
		<td>쿠키의 보안이 어떻게 설정되어 있는지 알려줌</td>
	</tr>
	
	<tr>
		<td>void getValue()</td>
		<td>쿠키의 값을 가져온다</td>
	</tr>
	
	<tr>
		<td>void getVersion()</td>
		<td>쿠키의 버전을 가져온다</td>
	</tr>
	
	</table>
	</div>
	</section>
	
	<section>
		<h2>▶ 쿠키 생성(set)하는 프로그램 작성</h2>
		<div class="contentWrap">
		<%
			//1.cookie 객체생성
			Cookie c = new Cookie("id","pinkeunju");
			//2.유효기간 설정
			c.setMaxAge(365*24*60*60);//쿠키의 유효기간을 만료시키기 위해서 값이 0으로 설정
			//3.클라이언트에 쿠키 전송
			response.addCookie(c);
			//4.쿠키를 생성하여 클라이언트에 전송
			response.addCookie(new Cookie("pwd","test1234"));
			response.addCookie(new Cookie("age","20"));
		%>
		
		<h3>쿠키 설정</h3>
		</div>
	</section>
</body>
</html>