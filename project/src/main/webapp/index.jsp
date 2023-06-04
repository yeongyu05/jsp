<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<div id="root">
		<%@ include file="templates/header.jsp" %>
		<%@ include file="templates/nav.jsp" %>
		<main>
			<section>
				<div class="inner">
					<h3>객실예약 프로그램</h3>
					<p>
						본 과제는 객실예약 등록 및 현황조회 프로그램입니다.<br>
						메뉴는 객실예약등록, 객실예약현황, 홈으로가 존재합니다.<br>
						객실예약등록 메뉴에서 등록한 내역을 객실예약현황 메뉴에서 확인 할 수 있습니다.
					</p>
				</div>
			</section>
		</main>
		<%@ include file="templates/footer.jsp" %>
	</div>
</body>
</html>