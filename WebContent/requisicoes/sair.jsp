<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
	
	<%
	
	session.removeAttribute("Usuario");
	session.removeAttribute("Anunciante");
	
	response.sendRedirect("../index.jsp");
	
	%>