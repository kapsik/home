<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<style type="text/css">
/* body 설정 */
.body {
	background-color: #015e6e;
	margin: 0;
}

/* 네비게이션 설정 */
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

/* 메뉴 첫번째것만 넓이 설정*/
.body_nav > ul > li{
	width: 100px;
}

/* 주메뉴 a태그 다음에오는 부메뉴ul flex방향 컬럼으로 설정 */
.body_nav ul li a + ul {
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
	
//A> 드롭다운메뉴 동적생성
	//A-1> 전체메뉴 리스트 가져오기
	var allMenuJson = ${allMenuJson};
//	var allMenuJson = [{"MENU_CD":"TM","LEVEL":1,"MENU_NM":"TOP메뉴"},{"MENU_CD":"TM001","LEVEL":2,"MENU_NM":"  집","UPMENU_CD":"TM"},{"MENU_CD":"TM00101","LEVEL":3,"MENU_NM":"    내부","UPMENU_CD":"TM001"},{"MENU_CD":"TM00102","LEVEL":3,"MENU_NM":"    외부","UPMENU_CD":"TM001"},{"MENU_CD":"TM00103","LEVEL":3,"MENU_NM":"    마당","UPMENU_CD":"TM001"},{"MENU_CD":"TM00104","LEVEL":3,"MENU_NM":"    애완동물","UPMENU_CD":"TM001"},{"MENU_CD":"TM002","LEVEL":2,"MENU_NM":"  나","UPMENU_CD":"TM"},{"MENU_CD":"TM00201","LEVEL":3,"MENU_NM":"    공부","UPMENU_CD":"TM002"},{"MENU_CD":"TM00202","LEVEL":3,"MENU_NM":"    운동","UPMENU_CD":"TM002"},{"MENU_CD":"TM00203","LEVEL":3,"MENU_NM":"    게임","UPMENU_CD":"TM002"},{"MENU_CD":"TM003","LEVEL":2,"MENU_NM":"  가족","UPMENU_CD":"TM"},{"MENU_CD":"TM004","LEVEL":2,"MENU_NM":"  친구","UPMENU_CD":"TM"}];
	
	//A-2> 주메뉴 리스트 가져오기
	var topMenuJson = ${topMenuJson};
//	var topMenuJson = [{"MENU_CD":"TM001","MENU_NM":"집"},{"MENU_CD":"TM002","MENU_NM":"나"},{"MENU_CD":"TM003","MENU_NM":"가족"},{"MENU_CD":"TM004","MENU_NM":"친구"}];

	//A-3> 주메뉴 동적생성
	var topMenuList = "";
	for(var i = 0; i < topMenuJson.length; i++){
		//서브메뉴 아이디부여 + a태그로 감싸고 주메뉴이름 집어넣기
		var firstId = topMenuJson[i]["MENU_CD"];
		topMenuList += "<li id='" + firstId + "'><a href='#'>"
		topMenuList += topMenuJson[i]["MENU_NM"];
		topMenuList += "</a>";
		topMenuList += "<ul>";
		
		//해당주메뉴의 서브메뉴 리스트 가져오기(필터링사용)
		var subMenuJson = allMenuJson.filter(function(val){return (val.UPMENU_CD) == topMenuJson[i]["MENU_CD"]});
		
		//서브메뉴 동적생성
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
	
	//A-4> 동적메튜 붙히기
	$('.body_nav ul').append(topMenuList);
	$('nav ul li ul').css("display","none");
	
	//A-5> 드롭다운메뉴 css설정
	$('.body_nav li').css({"list-style-type": "none"
							, "cursor": "pointer"
							, "text-align": "center"});
	//메뉴색	
 	$('.body_nav li a').mouseover(function(){
		$(this).css("background-color","#00ff355e");
		});
	$('.body_nav li a').mouseleave(function(){
		$(this).css("background-color","")
		});
 
	//메뉴보이기 숨기기(선택한 메뉴만)
	$('.body_nav>ul>li>a').click(function(){
		if($(this).next().css("display") == "flex"){
			$(this).css("background-color","")
			$(this).next().css("display","none");
		}else{
			$(this).css("background-color","#00ff355e");
			$(this).next().css("display","flex");
		}
	});
	
	//메뉴보이기 숨기기(모든메뉴)
	/*
	$('.body_nav>ul>li>a').click(function(){
		if($('nav ul li ul').css("display") == "flex"){
			$(this).css("background-color","")
			$('nav ul li ul').css("display","none");
		}else{
			$(this).css("background-color","#00ff355e");
			$('nav ul li ul').css("display","flex");
		}
	});
	*/
	
}
</script>
</body>
</html>
