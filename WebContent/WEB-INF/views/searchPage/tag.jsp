<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
<title>Meshtagram</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="robots" content="noimageindex, noarchive">
<meta name="mobile-web-app-capable" content="yes">
<meta name="theme-color" content="#000000">
<meta id="viewport" name="viewport"
	content="width=device-width, user-scalable=no, initial-scale=1, minimum-scale=1, maximum-scale=1, viewport-fit=cover">

<style>
body{
background-color: #fafafa;

}

._2e96w {
	border-top: 1px solid #efefef;
	border-bottom: 1px solid #efefef;
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-orient: horizontal;
	-webkit-box-direction: normal;
	-webkit-flex-direction: row;
	-ms-flex-direction: row;
	flex-direction: row;
	font-size: 20px;
	font-weight: 600;
	-webkit-box-pack: center;
	-webkit-justify-content: center;
	-ms-flex-pack: center;
	justify-content: center;
	letter-spacing: 1px;
	text-align: center;
	margin-bottom : 30px;
}
._2e96w, a._t7nuu, a._t7nuu:visited {
	color: #999
}

._2e96w, ._t7nuu, a._sb9lc, a._sb9lc:visited, a._t7nuu, a._t7nuu:visited
	{
	-webkit-box-align: center;
	-webkit-align-items: center;
	-ms-flex-align: center;
	align-items: center
}
._dis{
	display : flex;
}
</style>
</head>
<body>
	<div style="height : 70px;"></div>
	<div class="title" align="center" style=" font-size: 50px;">
		${title}
	<div align="center" style="margin : 20 0">
	<div style="font-size : 20px;">${count }건이 검색되었습니다.</div>
	</div>
	</div>
	
<div align="left" class="_2e96w">게시물</div>
<div align="center" >
	<div class="_dis">
		<c:forEach var="obj" items="${tagList}">
		<p style="float: left; width: 33%;">
				<small><c:forEach items="${obj.tags }" var="tag">
						<a href="/searchtag.do?tags=${fn:replace(tag,'#','%23') }">${tag }</a>
				</c:forEach> </small> <br />
			
				<a
							href="${applictionScope.path}/detail/detail.do?code=${obj.code }"
							data-toggle="tooltip" id="top_${obj.code }" name="${obj.code }"
							class="tool" title="">
				<c:forEach items="${obj.image }" var="image" varStatus="st">
						<img src="${obj.path }${image }"
								style="width: 230px; height: 230px; " />
					</c:forEach>
				</a>
				
			</p>
		</c:forEach>
	</div>
</div>
</body>	
<script>
var setid = "${cookie.setId.value}";
likeList();

function likeList() {
	var boardid=[];
	$(".tool").each(function() {
		boardid.push($(this).attr("name"));
	});
	console.log(boardid);
	$.ajax("/likecountList.do", {
		"method" : "get",
		"async" : true,
		"data" : {
			"boardId" : boardid,
		}
	}).done(function(val) {
		console.log(val + "댓글 좋아요");
		for (var i = 0; i < val.length; i++) {
			// console.log(val.length);
			//$("#top_" + val[i].boardId).attr("title","좋아요 " + val[i].count+"개");
			if(val[i].count==0){
				
			}else{
				$("#top_" + val[i].boardId).val(val[i].count + "개");
			$("#top_" + val[i].boardId).attr("title","좋아요"+val[i].count + "개");
			}
			
		}
		List();
	})
	
};

function List() {
	var boardid=[];

	$(".tool").each(function() {
		boardid.push($(this).attr("name"));
	});
	console.log(boardid);
	$.ajax("/ReList.do", {
		"method" : "get",
		"async" : true,
		"data" : {
			"boardId" : boardid
		}
	}).done(
			function(val) {
				
				var boardid = [];
				var reply = [];
				$(".rebt").each(function() {
					boardid.push($(this).attr("name"));
					reply.push($(this).attr("name"));
				});
				// console.log(val);
					
				for (var i = 0; i < val.length; i++) {
							var reply = $("#top_" + val[i].boardId).val();
							console.log(reply);
							$("#top_" + val[i].boardId).attr("title","좋아요 "
									+ $("#top_" + val[i].boardId)
											.val() + "댓글 "
									+ val[i].count + "개");
					//reply.appent("댓글 "+ val[i].count + "개");
					}
			})
};
$(document).ready(function(){
    $('[data-toggle="tooltip"]').tooltip();   
});
</script>



</html>