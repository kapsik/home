<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
<style type="text/css">
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
	<title>Home</title>
</head>

<body>
	<header>
		<h1>HOME</h1>
	</header>
	<nav>
		<ul>
			<li>Home</li>
			<li>Me</li>
			<li>Family</li>
			<li>Friends</li>
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
</body>
</html>
