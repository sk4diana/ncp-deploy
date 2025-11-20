<%@page import="java.util.ArrayList" %>
	<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
		<html>

		<head>
			<title>Forty by HTML5 UP</title>
			<meta charset="utf-8" />
			<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
			<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
			<link rel="stylesheet" href="/web/assets/css/main.css">

			<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
			<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
		</head>

		<body>

			<!-- Wrapper -->
			<div id="wrapper">

				<!-- Header -->
				<header id="header" class="alt">
					<a href="index.html" class="logo"><strong>Forty</strong> <span>by HTML5 UP</span></a>
					<nav>
						<!-- Q6. 로그인을 한 상태에서는 로그인탭 대신 로그아웃탭과 개인정보수정탭을 출력 -->
						<!-- 로그인 전 => 로그인 메뉴 띄우기 -->
						<c:if test="${empty member}">
							<a href="#menu">로그인</a>
						</c:if>
						
						<!-- 로그인 후 => 로그아웃 메뉴 띄우기 -->
						<!-- admin 계정의 경우 회원정보관리 메뉴 연결! -->
						<c:if test="${not empty member}">
							<c:if test="${member.email eq 'admin'}">
								<a href="showMember">회원정보관리</a>
							</c:if>
							<c:if test="${member.email ne 'admin'}">
								<a href="goUpdate">개인정보수정</a>
							</c:if>
							<a href="logout">로그아웃</a>
						</c:if>
						
						<!-- Q7. 개인정보수정 기능 만들기 -->
						<!-- Q8. 로그아웃 기능 만들기 -->
						<!-- Q9. 관리자 계정(admin)일 때는 회원정보관리 탭 만들기 -->
					</nav>
				</header>

				<!-- Menu -->
				<nav id="menu">
					<div class="inner">
						<ul class="links">
							<!-- Q3. 로그인 기능 만들기 -->
							<!-- login이라는 요청으로 email, pw를 전달하는 form 구조를 만들기 -->
							<li>
								<h5>로그인</h5>
							</li>
							<form action="login" method="post">
								<li><input type="text" name="email" placeholder="Email을 입력하세요"></li>
								<li><input type="password" name="pw" placeholder="PW를 입력하세요"></li>
								<li><input type="submit" value="LogIn" class="button fit"></li>
							</form>
						</ul>

						<ul class="actions vertical">
							<!-- Q1. 회원가입 기능 만들기 -->
							<li>
								<h5>회원가입</h5>
							</li>
							<form action="join" method="post">
								<li><input type="text" name="email" id="inputEmail" placeholder="Email을 입력하세요"></li>
								<li><input type="button" value="Email 중복체크" onclick="checkEmail()"></li>
								<li><span id="resultEmail"></span></li>
								<li><input type="password" name="pw" placeholder="PW를 입력하세요"></li>
								<li><input type="text" name="tel" placeholder="전화번호를 입력하세요"></li>
								<li><input type="text" name="address" placeholder="집주소를 입력하세요"></li>
								<li><input type="submit" value="JoinUs" class="button fit"></li>
							</form>
						</ul>

						<!-- 테마 기본 패턴: 닫기 링크 -->
						<a href="#" class="close">Close</a>
					</div>
				</nav>
				<!-- Banner -->
				<section id="banner" class="major">
					<div class="inner">
						<header class="major">
							<!-- Q4. 로그인 후 로그인한 사용자의 아이디로 바꾸기 -->
							<!-- ex) smhrd님 환영합니다.  -->
							<!-- 로그인 수행 전/후 에 따른 h1태그 출력을 생각해야 한다! -->
							<!-- 로그인 전이라면 => 즉, session 영역에 member가 없다면! -->
							<!-- empty : null과 같은 의미 -->
							<c:if test="${empty member}">
								<h1>로그인 한 세션아이디를 출력해주세요.</h1>
							</c:if>
							<!-- 로그인 후라면 => 즉, session 영역에 member가 있다면! -->
							<c:if test="${not empty member}">
								<h1>${member.email}님 환영합니다.</h1>
							</c:if>
						</header>
						<div class="content">
							<p>게시판을 이용해보세요 ^^<br></p>
							<ul class="actions">
								<li><a href="BoardMain.jsp" class="button next scrolly">게시판 바로가기</a></li>
							</ul>
						</div>
					</div>
				</section>

				<!-- Main -->
				<div id="main">

					<!-- One -->
					<section id="one" class="tiles">
						<article>
							<span class="image">
								<img src="/web/images/pic01.jpg" alt="" />
							</span>
							<header class="major">
								<h3><a href="#" class="link">HTML</a></h3>
								<p>홈페이지를 만드는 기초 언어</p>
							</header>
						</article>
						<article>
							<span class="image">
								<img src="/web/images/pic02.jpg" alt="" />
							</span>
							<header class="major">
								<h3><a href="#" class="link">CSS</a></h3>
								<p>HTML을 디자인해주는 언어</p>
							</header>
						</article>
						<article>
							<span class="image">
								<img src="/web/images/pic03.jpg" alt="" />
							</span>
							<header class="major">
								<h3><a href="#" class="link">Servlet/JSP</a></h3>
								<p>Java를 기본으로 한 웹 프로그래밍 언어/스크립트 언어</p>
							</header>
						</article>
						<article>
							<span class="image">
								<img src="/web/images/pic04.jpg" alt="" />
							</span>
							<header class="major">
								<h3><a href="#" class="link">JavaScript</a></h3>
								<p>HTML에 기본적인 로직을 정의할 수 있는 언어</p>
							</header>
						</article>
						<article>
							<span class="image">
								<img src="/web/images/pic05.jpg" alt="" />
							</span>
							<header class="major">
								<h3><a href="#" class="link">MVC</a></h3>
								<p>웹 프로젝트 중 가장 많이 사용하는 디자인패턴</p>
							</header>
						</article>
						<article>
							<span class="image">
								<img src="/web/images/pic06.jpg" alt="" />
							</span>
							<header class="major">
								<h3><a href="#" class="link">Web Project</a></h3>
								<p>여러분의 최종프로젝트에 웹 기술을 활용하세요!</p>
							</header>
						</article>
					</section>
					<!-- Two -->
					<section id="two">
						<div class="inner">
							<header class="major">
								<h2>나에게 온 메세지 확인하기</h2>
							</header>
							<p></p>
							<ul class="actions">
								<!-- Q12. 로그인 이메일 출력! -->
								<!-- ex) smhrd님에게 온 메시지  -->
								<li>로그인을 하세요.</li>
								<!-- Q14. 메시지 전체 삭제 기능 -->
								<li><a href="#" class="button next scrolly">전체삭제하기</a></li>
							</ul>
							<!-- Q13. table형태로 나한테 온 메시지만 가져와서 보여주기
											 번호, 보낸사람, 내용, 시간 -->
							<!-- Q15. 메시지 개별 삭제 기능 -->
						</div>
					</section>

				</div>

				<!-- Contact -->
				<section id="contact">
					<div class="inner">
						<section>
							<!-- Q11. 메시지 보내기 기능(메시지는 계속 확인하기 위해서 DB에 저장!) -->
							<!-- 다른 사람의 DB에 메시지 저장해보기! -->
							<form>
								<div class="field half first">
									<label for="name">Name</label>
									<input type="text" id="name" placeholder="보내는 사람 이름" />
								</div>
								<div class="field half">
									<label for="email">Email</label>
									<input type="text" id="email" placeholder="받는 사람 이메일" />
								</div>

								<div class="field">
									<label for="message">Message</label>
									<textarea id="message" rows="6"></textarea>
								</div>
								<ul class="actions">
									<li><input type="submit" value="Send Message" class="special" /></li>
									<li><input type="reset" value="Clear" /></li>
								</ul>
							</form>
						</section>

						<section class="split">
							<section>
								<div class="contact-method">
									<span class="icon alt fa-envelope"></span>
									<h3>Email</h3>
									<!-- Q5. 로그인 한 사용자의 이메일을 출력 -->
									<c:if test="${empty member}">
										<a href="#">로그인 한 사람의 이메일을 출력</a>
									</c:if>
									
									<c:if test="${not empty member}">
									<a href="#">${member.email}</a>
									</c:if>
								</div>
							</section>
							<section>
								<div class="contact-method">
									<span class="icon alt fa-phone"></span>
									<h3>Phone</h3>
									<!-- Q5. 로그인 한 사용자의 전화번호를 출력 -->
									<c:if test="${empty member}">
										<span>로그인 한 사람의 전화번호를 출력</span>
									</c:if>
									
									<c:if test="${not empty member}">
										<span>${member.tel}</span>
									</c:if>
								</div>
							</section>
							<section>
								<div class="contact-method">
									<span class="icon alt fa-home"></span>
									<h3>Address</h3>
									<!-- Q5. 로그인 한 사용자의 집주소를 출력 -->
									<c:if test="${empty member}">
										<span>로그인 한 사람의 집주소를 출력</span>
									</c:if>
									
									<c:if test="${not empty member}">
										<span>${member.address}</span>
									</c:if>
								</div>
							</section>
						</section>
					</div>
				</section>

				<!-- Footer -->
				<footer id="footer">
					<div class="inner">
						<ul class="icons">
							<li><a href="#" class="icon alt fa-twitter"><span class="label">Twitter</span></a></li>
							<li><a href="#" class="icon alt fa-facebook"><span class="label">Facebook</span></a></li>
							<li><a href="#" class="icon alt fa-instagram"><span class="label">Instagram</span></a></li>
							<li><a href="#" class="icon alt fa-github"><span class="label">GitHub</span></a></li>
							<li><a href="#" class="icon alt fa-linkedin"><span class="label">LinkedIn</span></a></li>
						</ul>
						<ul class="copyright">
							<li>&copy; Untitled</li>
							<li>Design: <a href="https://html5up.net">HTML5 UP</a></li>
						</ul>
					</div>
				</footer>

			</div>

			<!-- Scripts -->
			<script src="/web/assets/js/jquery.min.js"></script>
			<script src="/web/assets/js/jquery.scrolly.min.js"></script>
			<script src="/web/assets/js/jquery.scrollex.min.js"></script>
			<script src="/web/assets/js/skel.min.js"></script>
			<script src="/web/assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="/web/assets/js/main.js"></script>
			
			<!-- 비동기 통신으로 회원가입의 이메일 중복을 체크할 수 있는 기능! -->
			<script type="text/javascript">
				function checkEmail(){
					// AJAX : JS에서 비동기 통신을 위해 사용하는 기술
					
					// 1. 입력된 이메일 가져오기!
					let email = $('#inputEmail').val();
					
					// 1) 요청 url
					// 2) 요청 type(get/post)
					// 3) 활용 data => JSON타입 / key:value
					// 4) 성공/실패에 대한 로직
					$.ajax({
						url : "checkEmail", // controller가 받을 수 있는 요청 값
						type : "get",
						data : {inputEmail : email},
						success : function(res){
							// 매개변수 res의 의미 : controller의 작업 이후
							// 중복체크 여부에 대한 결과값이 담기는 변수!
							// res => RestController에서 전달해주는 return값! "true"/"false"
							if(res == "true"){
								$("#resultEmail").text("사용 가능한 이메일 입니다.").css("color", "green")
							} else {
								$("#resultEmail").text("이미 사용중인 이메일 입니다.").css("color", "red")
							}
							
						},
						error : function(){
							alert("회원 체크 실패");
						}
					});
					
				}
			</script>
			
		</body>

		</html>