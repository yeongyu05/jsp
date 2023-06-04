<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="db_connect.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/style.css">
</head>
<%
	Statement stmt = con.createStatement();
	ResultSet rs = stmt.executeQuery("select * from reservation_tbl_202305 order by resv_no desc");
	rs.next();
%>
<body>
	<div id="root">
		<%@ include file="templates/header.jsp" %>
		<%@ include file="templates/nav.jsp" %>
		<main id="insert">
			<section>
				<div class="inner">
					<h3>객실예약등록</h3>
					<form action="insertCtrl.jsp" method="POST" name="form">
						<table border="1">
							<tr>
								<th>예약번호(자동채번)</th>
								<td><input type="text" name="resv_no" value="<%=Integer.parseInt(rs.getString(1)) + 1%>" readonly></td>
							</tr>
							<tr>
								<th>예약자 전화번호</th>
								<td><input type="text" name="resv_phone">(하이픈 미입력)</td>
							</tr>
							<tr>
								<th>예약기간</th>
								<td><input type="text" name="resv_from_ymd" placeholder="yyyymmdd"> 부터 <input type="text" name="resv_to_ymd" placeholder="yyyymmdd"> 까지</td>
							</tr>
							<tr>
								<th>예약객실번호</th>
								<td>
									<select name="resv_rm_number">
										<option value="101">101호</option>
										<option value="102">102호</option>
										<option value="103">103호</option>
										<option value="104">104호</option>
										<option value="201">201호</option>
										<option value="202">202호</option>
										<option value="203">203호</option>
										<option value="204">204호</option>
									</select>
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<button type="submit">등록</button>
									<button type="reset">다시쓰기</button>
								</td>
							</tr>
						</table>
					</form>
				</div>
			</section>
		</main>
		<%@ include file="templates/footer.jsp" %>
	</div>
	<script src="js/script.js"></script>
</body>
<%
	stmt.close();
	con.close();
	rs.close();
%>
</html>