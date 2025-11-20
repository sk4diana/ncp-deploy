<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- 1.request영역에 저장된 정보를 가져오시오. -->
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Forty by HTML5 UP</title>
		<meta charset="UTF-8" />
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="/web/assets/css/main.css" />
		<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
		
	</head>
	<style>
	
	</style>
	<body style="text-align: center;">
		<!-- Wrapper -->
			<div id="wrapper">
				<!-- Menu -->
					<nav id="Update">	
						<table>
							<caption><h2>회원관리페이지</h2></caption>
							<tr>
								<td>Email</td>
								<td>Tel</td>
								<td>Address</td>	
								<td>Delete</td>						
							</tr>
							
							<!-- Q10. 테이블에 저장된 모든 회원의 이메일(email),전화번호(tel),주소(address)를 출력하시오. -->
							<c:forEach items="${list}" var="m">
								<tr>
									<td>${m.email}</td>
									<td>${m.tel}</td>
									<td>${m.address}</td>
									<td><a href="delete?email=${m.email}">del</a></td>
									<!-- 쿼리스트링 : 사용자가 입력 데이터를 url 주소에 포함하여 넘기는 것 -->
									<!-- 쿼리스트링의 시작은 주소 이후에 ? 뒤 부터이다. -->
									<!-- 삭제 버튼을 클릭 시, 해당 데이터의 사용자 email을 요청값으로 같이 전달 -->
									
								</tr>
							</c:forEach>							
							
						</table>
					</nav>		
					<a href="main.jsp" class="button next scrolly">되돌아가기</a>	
			</div>
		<!-- Scripts -->
			<script src="/web/assets/js/jquery.min.js"></script>
			<script src="/web/assets/js/jquery.scrolly.min.js"></script>
			<script src="/web/assets/js/jquery.scrollex.min.js"></script>
			<script src="/web/assets/js/skel.min.js"></script>
			<script src="/web/assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="/web/assets/js/main.js"></script>
	</body>
</html>