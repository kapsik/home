<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<style type="text/css">
body {
	background-color: #015e6e;
}
body nav {
	outline: 1px dotted black;
	padding: 1px;
	margin: 1px;
}
body nav ul li {
	list-style-type: none;
	display: inline;
	/* float: left; */
	border: 1px solid black;
	border-radius: 5px;
	padding: 2px;
	margin: 10px;
	
}
	
body main section {
	outline: 1px solid black;
}
body main section article {
	outline: 1px dotted black;
	float: left;
	width: 50%;
}
body main section article aside{
	outline: 1px dotted black;
	float: right;
	width: 50%;
}

body footer {
	outline: 1px solid black;
}		
</style>
<script type="text/javascript"></script>
	<title>Home</title>
</head>

<body>
	<header>
		<h1>HOME</h1>
	</header>
	<nav>
		<ul>
		
		</ul>
	</nav>
	<main>
		<section>
			<article>
				<div>Home</div>
			</article>
		</section>
		<aside>
			<p>my home is the best</p>
		</aside>
	</main>
	<footer>
		<a>youtube</a>
	</footer>	
<script type="text/javascript" src="resources/js/homeTop.js"></script>
<script type="text/javascript">
window.onload = function(){
	//상단대메뉴 동적생성
	var navList = "";
	<c:forEach items="${topMenuList}" var="item">
		navList += "<li>${item.COMM_NM}</li>"
	</c:forEach>
	$('body nav ul').append(navList);
	
}
</script>
</body>
</html>
