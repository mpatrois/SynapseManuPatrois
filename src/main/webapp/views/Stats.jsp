<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="springForm"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Synapse Gaming | Statistiques</title>
    <!-- Meta -->
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- CSS -->
    <link rel="shortcut icon" type="image/x-icon" href="<c:url value="/resources/img/favicon.ico" />"/>
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/common.css" />">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/home.css" />">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/header.css" />">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/menu.css" />">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/news.css" />">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/slider.css" />">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/videos.css" />">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/blogs.css" />">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/achievement.css" />">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/recruitment.css" />">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/footer.css" />">
    <!-- JS -->
    <script type="text/javascript" src="<c:url value="/resources/js/jquery-2.0.3.js" />"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/menu.js" />"></script>
</head>
<body>
<div id="page-wrapper">
	<div id="header-wrapper">
		<jsp:include page="portal/Header.jsp"/>
	</div>
	<div id="persistent-menu-wrapper">
		<jsp:include page="portal/PersistentMenu.jsp"/>
	</div>
	<div id="menu-wrapper">
		<jsp:include page="portal/Menu.jsp"/>
	</div>
	<div id="news-wrapper">
		<jsp:include page="portal/News.jsp"/>
	</div>
<!-- 	<div id="videos-wrapper"> -->
<%-- 		<jsp:include page="portal/Videos.jsp"/> --%>
<!-- 	</div> -->
	<div id="middle-wrapper">
		<h3>Statistiques</h3>
		<h4>Top 5 des classes les plus jouées</h4>
			<c:forEach items="${fiveClazzMostPlayed}" var="clazz">
			<div>${ clazz.getName() }	</div>
		</c:forEach>
		<h4>Top 5 des races les plus jouées</h4>
		<c:forEach items="${fiveRaceMostPlayed}" var="race">
			<div>${ race.name }	</div>
		</c:forEach>
		<h4>Top 5 des spécialisations jouées</h4>
		<c:forEach items="${fiveSpecializationMostPlayed}" var="specialization">
			<div>${ specialization.name }	</div>
		</c:forEach>
		<h4>La liste des utilisateurs sans avatar (avec l'avatar par défaut)</h4>
		<c:forEach items="${userWithoutAvatar}" var="user">
			<div>${ user.nickname }	</div>
		</c:forEach>
		<h4>Les 5 membres les plus actifs socialement</h4>
		<c:forEach items="${fiveUserMostActive}" var="user">
			<div>${ user.nickname }	</div>
		</c:forEach>
		
	</div>
	<div id="footer-wrapper">
		<jsp:include page="portal/Footer.jsp"/>
	</div>
</div>
</body>
</html>