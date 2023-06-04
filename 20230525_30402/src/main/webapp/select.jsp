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
	String sql = "select resv_no, resv_name, resv_phone, resv_from_ymd, resv_to_ymd, resv_rm_number, rm_type from reservation_tbl_202305 reservation JOIN room_tbl_202305 room ON resv_rm_number = rm_number order by resv_no";
	ResultSet rs = stmt.executeQuery(sql);
%>
<body>
	<div id="root">
		<%@ include file="templates/header.jsp" %>
		<%@ include file="templates/nav.jsp" %>
		<main id="select">
			<section>
				<div class="inner">
					<h3>객실예약현황</h3>
					<table border="1">
						<thead>
							<tr>
								<th>예약번호</th>
								<th>예약자성명</th>
								<th>예약자전화번호</th>
								<th>예약기간</th>
								<th>객실번호</th>
								<th>객실타입</th>
							</tr>
						</thead>
						<tbody>
						<%while(rs.next()) { %>
							<tr>
								<td><%=rs.getString(1) %></td>
								<td><%=rs.getString(2) %></td>
								<td><%=rs.getString(3) %></td>
								<td><%=rs.getString(4) %>~<%=rs.getString(5) %></td>
								<td><%=rs.getString(6) %>호</td>
								<td><%=rs.getString(7) %></td>
							</tr>
						<%
						}
						stmt.close();
						con.close();
						rs.close();
						%>
						</tbody>
					</table>
				</div>
			</section>
		</main>
		<%@ include file="templates/footer.jsp" %>
	</div>
	<script src="js/script.js"></script>
</body>
</html>