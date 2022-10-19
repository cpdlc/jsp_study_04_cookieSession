<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>session</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
	<header>
		<h1>session 모든것</h1>
	</header>
	
	<section>
		<h2>▶ session 내장객체와 같이 사용되는 메소드</h2>
		<div class="contentWrap">
			<table>
				<tr>
					<th>메서드</th>
					<th>설명</th>
				</tr>
				
				<tr>
					<td>Object getAttribute(String name)</td>
					<td>이름에 해당되는 객체 값을 가져온다. 없을 경우에는 null을 반환한다.
						반환값은 Object 형이므로 반드시 형 변환을 하여 사용한다.</td>
				</tr>
				
				<tr>
					<td>Enumeration getAttributeNames()</td>
					<td>세션에서 모든 객체의 이름을 Enumeration형으로 얻어준다.</td>
				</tr>
				
				<tr>
					<td>long getCrationTime()</td>
					<td>세션이 만들어진 시간을 반환</td>
				</tr>
				
				<tr>
					<td>String getId()</td>
					<td></td>
				</tr>
				
				<tr>
					<td>long getLastAccessedTime()</td>
					<td></td>
				</tr>
				
				<tr>
					<td>int getMain</td>
					<td></td>
				</tr>
				
				<tr>
					<td>boolean isNew()</td>
					<td>해당 세션이 처음 생성되었으면 true, 이전에 생성된 세션이면 false</td>
				</tr>
				
				<tr>
					<td>void removeAttribute(String name)</td>
					<td>지정된 이름에 해당하는 객체를 세션에서 제거</td>
				</tr>
				
				<tr>
					<td>void setAttribute(String name,Object value)</td>
					<td>세션에 지정된 이름에 객체를 추가한다.</td>
				</tr>
				
				<tr>
					<td>void setMaxInactiveInterval(int interval)</td>
					<td>사용자는 다음 요청을 보낼 때까지 세션을 유지하고 최대시간을 설정
						이시간을 넘기면 서블릿 컨테이너는 세션을 종료한다.</td>
				</tr>
				
				<tr>
					<td>void invalidate()</td>
					<td>해당 세션을 없애고 세션에 속해 있는 값들을 없앤다.</td>
				</tr>
			</table>
		</div>
		
		<h2>▶ setAttribute()의 기본형식</h2>
		<div class="contentWrap">
			seesion.setAttribute(String name, Object value); 
		</div>
		
		<h2>▶ 세션에 저장된 값 얻어오기 => getAttribute()</h2>
		<div class="contentWrap">
			Object getAttribute(String name);<br/>
			String id=(String) session.getAttribute("id");<br/>
			Integer age=(Integer) session.getAttribute("age"); 
		</div>
	</section>
	
	<section>
		<h2>▶ 세션에 값 설정하기</h2>
		<div class="contentWrap">
			<%
				session.setAttribute("id", "bluejung");
				session.setAttribute("pwd", "bluejung");
				session.setAttribute("age",123);
				
				
			%>
		</div>
	</section>
	
	
</body>
</html>