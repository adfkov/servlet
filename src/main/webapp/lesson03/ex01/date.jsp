<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> <!--  jsp 페이지 임을 알려줌 -->
<p>
	현재 시간: <%= Calendar.getInstance().getTime() %>
	<!--  Mon Sep 11 19:41:34 KST 2023 -->
</p>