<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="">
		<meta name="author" content="Dashboard">
		<meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
		<title>카페 취향 - 관리자 시스템</title>
		
		<!-- Favicons -->
		<link href="${pagecontext.request.contextpath}/img/favicon.ico" rel="icon">
		<!-- <link href="img/apple-touch-icon.png" rel="apple-touch-icon"> -->
		
		<!-- Bootstrap core CSS -->
		<link href="${pagecontext.request.contextpath}/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
		<!--external css-->
		<link href="${pagecontext.request.contextpath}/lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
		<link rel="stylesheet" type="text/css" href="${pagecontext.request.contextpath}/lib/bootstrap-fileupload/bootstrap-fileupload.css" />
	  	<link rel="stylesheet" type="text/css" href="${pagecontext.request.contextpath}/lib/bootstrap-datepicker/css/datepicker.css" />
	  	<link rel="stylesheet" type="text/css" href="${pagecontext.request.contextpath}/lib/bootstrap-daterangepicker/daterangepicker.css" />
	  	<link rel="stylesheet" type="text/css" href="${pagecontext.request.contextpath}/lib/bootstrap-timepicker/compiled/timepicker.css" />
	  	<link rel="stylesheet" type="text/css" href="${pagecontext.request.contextpath}/lib/bootstrap-datetimepicker/css/datetimepicker.css" />
		<link rel="stylesheet" type="text/css" href="${pagecontext.request.contextpath}/css/zabuto_calendar.css">
		<link rel="stylesheet" type="text/css" href="${pagecontext.request.contextpath}/lib/gritter/css/jquery.gritter.css" />
		<!-- Custom styles for this template -->
		<link href="${pagecontext.request.contextpath}/css/style.css" rel="stylesheet">
		<link href="${pagecontext.request.contextpath}/css/style-responsive.css" rel="stylesheet">
		<script src="${pagecontext.request.contextpath}/lib/chart-master/Chart.js"></script>
    </head>
    <body>
            <tiles:insertAttribute name="header" />
            <tiles:insertAttribute name="aslide" />
            <tiles:insertAttribute name="content" />
            <tiles:insertAttribute name="footer" />
        
    </body>
</html>