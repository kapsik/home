<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<style type="text/css">
.body {
	background-color: #015e6e;
	margin: 0;
}

.body_nav {
	display: flex;
	justify-content: center;
	align-items: center;
	outline: 1px dotted black;
	padding: 8px 12px;
	background-color: hsl(180, 9%, 9%);
	
}

.body_nav ul {
	margin: 0px;
	padding: 0px;
	display: flex;
	justify-content: center;
	align-content: flex-start;
}

nav ul li {
	margin-left: 20px;
	margin-right: 20px;
	width: 50px;
}

nav ul li a + ul {
	flex-direction: column;
}

.body_nav ul a{
	display: block;
	text-decoration: none;
	color: white;
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

<body class="body">
	<header>
		<h1>HOME</h1>
	</header>
	<nav class="body_nav">
		<ul></ul>
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
		<a href="#">youtube</a>
	</footer>	
<script type="text/javascript" src="resources/js/homeTop.js"></script>
<script type="text/javascript">
window.onload = function(){
	
	
	//A> 전체메뉴 리스트
	var allMenuJson = ${allMenuJson};
	
	//A-1> 주메뉴 리스트
	var topMenuJson = ${topMenuJson};

	//A-2> 주메뉴 동적 리스트생성
	var topMenuList = "";
	
	for(var i = 0; i < topMenuJson.length; i++){
		//서브메뉴 아이디부여
		var firstId = topMenuJson[i]["MENU_CD"];
		topMenuList += "<li id='" + firstId + "'><a href='#'>"
		topMenuList += topMenuJson[i]["MENU_NM"];
		topMenuList += "</a>";
		topMenuList += "<ul>";
		
		//B-1> 해당서브메뉴 리스트
		var subMenuJson = allMenuJson.filter(function(val){return (val.UPMENU_CD) == topMenuJson[i]["MENU_CD"]});
		
		//B-2> 서브메뉴 동적 리스트생성
		var subMenuList = "";
		for(var j = 0; j < subMenuJson.length; j++){
			subMenuList += "<li><a href='#'>";
			subMenuList += subMenuJson[j]["MENU_NM"].replaceAll(" ","");
			subMenuList += "</a></li>";
		}
		
		//C-1> 서브메뉴 붙히기
		topMenuList += subMenuList;
		
		topMenuList += "</ul>";
		topMenuList += "</li>";
	};
	
	//C-2> 동적메튜 붙히기
	$('.body_nav ul').append(topMenuList);
//	$('nav ul li ul').css("display","none");
	
	//D> li css설정
	$('.body_nav li').css({"list-style-type": "none"
//							, "display": "inline-block"
//							, "border": "1px solid black"
//							, "border-radius": "5px"
//							, "padding": "2px"
//							, "margin": "10px"
							, "cursor": "pointer"
//							, "width": "60px"
							, "text-align": "center"});
	
	$('.body_nav li a').mouseover(function(){
		$(this).css("background-color","#00ff355e");
//		$('nav ul li ul').css("display","flex");
		});
	$('.body_nav li a').mouseleave(function(){
		$(this).css("background-color","")
//		$('nav ul li ul').css("display","none");
		});
}
</script>
</body>
</html>
