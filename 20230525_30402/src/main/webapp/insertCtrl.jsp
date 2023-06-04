<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="db_connect.jsp" %>
<%
	request.setCharacterEncoding("UTF-8");
	String resv_no = request.getParameter("resv_no");
	String resv_phone = request.getParameter("resv_phone");
	String resv_from_ymd = request.getParameter("resv_from_ymd");
	String resv_to_ymd = request.getParameter("resv_to_ymd");
	String resv_rm_number =  request.getParameter("resv_rm_number");

	System.out.println(resv_no);	
	System.out.println(resv_phone);	
	System.out.println(resv_from_ymd);	
	System.out.println(resv_to_ymd);	
	System.out.println(resv_rm_number);	
	
	String sql = "insert into reservation_tbl_202305 (resv_no, resv_phone, resv_from_ymd, resv_to_ymd, resv_rm_number) values (?, ?, ?, ?, ?)";
	
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setString(1, resv_no);
	pstmt.setString(2, resv_phone);
	pstmt.setString(3, resv_from_ymd);
	pstmt.setString(4, resv_to_ymd);
	pstmt.setString(5, resv_rm_number);
	pstmt.executeQuery();

	con.close();
	pstmt.close();
	response.sendRedirect("select.jsp");
%>