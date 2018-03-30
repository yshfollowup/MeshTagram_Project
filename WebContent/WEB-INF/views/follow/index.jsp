<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="robots" content="noimageindex, noarchive">
<meta name="mobile-web-app-capable" content="yes">
<meta name="theme-color" content="#000000">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body style="background-color: #fafafa;">

<div style="height:70px;"></div>

<div align="center" style="min-height: 300px; height: 300px">
	<div align="left">
		<p>
			<h4 align="center"><b>사람 찾기</b></h4>
			<hr/>
		</p>
	</div>
	
	<div align="left" class="container">
		<p>
			<h4 align="left"><b>팔로우 가장 많은 top5 + 알수도 있는 친구</b></h4> 
		</p>
		
<%-- 		<c:set var="listDivide" value="${fn:length(recommend) / 8 }" />
		<c:set var="division" value="1"/>
		<c:set var="element" value="${division * 8 }"/>
		<c:if test="${fn:length(recommend) % 8 ne 0 }">
			<c:set var="listDivide" value="${listDivide + 1}" />
			<c:if test="${listDivide eq fn:length }"></c:if>
			<c:set var="element" value="${element + fn:length(recommend) % 8 }"/>
		</c:if> --%>
		
		<c:forEach var="objRecom" items="${recommend }" varStatus="vs">
				<c:if test="${vs.index lt 8}">
				<p style="float: left; width: 25%;">
					<c:choose>
						<c:when test="${empty objRecom.profile }">
							<img src="/images/insta.jpg" style="width: 30px; height: 30px; border-radius: 30px" id="preview">
						</c:when>
						<c:otherwise>
							<img src="${applicationScope.path }${objRecom.profile}"
								style="width: 30px; border-radius: 100%" id="profile" />
						</c:otherwise>
					</c:choose>
	
					<a href="/search.do?id=${objRecom.id}" name="id">${objRecom.id }</a>
					<c:set var="isFollowing" value="false" />
					<c:set var="doneLoop" value="false" />
					<c:forEach var="objFollowing" items="${following }">
						<c:if test="${not doneLoop }">
							<c:if test="${objFollowing.id } eq ${objRecom.id }">
								<input class="follower btn " type="button" name="${objRecom.id }"
								
									value="팔로잉" />
								<c:set var="isFollowing" value="true" />
								<c:set var="doneLoop" value="true" />
							</c:if>
						</c:if>
					</c:forEach>
					<c:if test="${not isFollowing }">
						<input class="follower btn btn-info" type="button" name="${objRecom.id }"
						style="width:70px; height: 20px; padding: 0 0 0 0;"
						value="팔로우" />
					</c:if>
				</p>
				</c:if>
		</c:forEach>
	</div>
	<button type="button" id="listbt" class="btn btn-info show" data-toggle="collapse"
		 data-target=".collapse" aria-expanded="false" style="margin-bottom:20px;">더 찾아보기</button>
		<div id="demo" class="collapse" aria-expanded="false" style="">
		
  		</div>
			<div style="height:300px"></div>
	
</div>

<hr/>

<div align="center" style="min-height: 700px; height: 700px">
	<div align="center">
			<h4 align="center"><b>최근 소식들</b></h4>
			<hr/>
	</div>
	<div align="left">

		<div class="col-sm-8 text-left">
			<c:forEach var="objLatest" items="${latest}">
				<p style="float: left; width: 50%;">
				<a href="${applictionScope.path}/detail/detail.do?boardid=${objLatest._id }"
							data-toggle="tooltip" id="top_${objLatest.code }" name="${objLatest.code }"
							class="tool" title=""> <c:forEach items="${objLatest.image }"
								var="image" varStatus="st" end="0">
								<img src="${objLatest.path }${image }"
									style="width: 230px; height: 230px;" />
							</c:forEach>
						</a>
				</p>
			</c:forEach>
		</div>



	</div>

</div>


</body>

<!-- =========================================================================================================== -->
<script>
$(function(){
	   $("#listbt").click(function () {
	      $(this).text(function(i, text){
	          return text === "더 찾아보기" ? "숨기기" : "더 찾아보기";
	      })
	   });
	})
</script>
<script>
	var setid = "${cookie.setId.value}";
	$(".show").on("click", function(){
		$("#demo").html("");
		$.ajax("/follow/followListSomeone.do",{
			"method" : "get",
			"async" : true,
			"data" : {
				"setId" : setid
			}
		}).done(function(val){
			console.log(val);
			$.ajax("/checkFollow.do",{
				"method" : "get",
				"async" : true,
				"data" : {
					"setId" : setid
				}
			}).done(function(val2){
				console.log(val2);
				for(var i=0; i<val.length; i++){
					var fbt;
					var image=val[i].PROFILE;
					var profile;
					if(val[i].PROFILE !=null){
						profile="<img src="+image+" style=\"width: 30px; height: 30px; border-radius: 30px\" class=\"recomId\">"
					}else{
						profile="<img src=\"/images/insta.jpg\" style=\"width: 30px; height: 30px; border-radius: 30px\" class=\"recomId\">"
					}
					
					var cnt1=0;
					var cnt2=0;
					for(var j=0; j<val2.length; j++){
					var follow = val2[j].ID;
						if(val[i].TARGET != val2[j].TARGET){
							
							cnt1++;
						}else{
							//fbt= "<input  type=\"button\" name="+val[j].ID+"class=\"follow\" value=\"팔로잉\"/>";
							cnt2++;
						}
					}
						if(cnt2!=1){
							fbt= "<input  type=\"button\" name="+val[i].TARGET+"\ class=\"follower btn btn-info\" style=\"width:70px; height: 20px; padding: 0; margin:1 20 0 5;\" value=\"팔로우\"/>";
							$("#demo").append(profile+"<a href=\"/search.do?id="+val[i].TARGET+"\">"+val[i].TARGET+"</a>"+fbt);
						}
				}
				
		$(".follower").on("click", function() {
			console.log("팔로우 들어왔다.");
			var src= $(this);
			var a = $(this).attr("name");
			if(src.val() == "팔로잉"){
				$.ajax("/follow/delete.do",{
					"method" : "get",
					"async" : true,
					"data" :{
						"owner" : setid,
						"target" : a
					}
				}).done(function(obj2){
					console.log("삭제 들어왔다.");
					src.val("팔로우");
					src.attr("name", a);
				});
			}else{
			$.ajax("/follow/insert.do",{
				"method" : "get",
				"async" : true,
				"data" :{
					"owner" : setid,
					"target" : a
				}
			}).done(function(obj){
				console.log("들어왔다."+src);
				src.val("팔로잉");
				src.attr("name", a);
			});
			}
		});
			})
			
		})
		
		console.log("팔로우 리스트 들어왔다.");
	});
	$(".follower").click(function() {
		var owner = "${cookie.setId.value}";
		var src = $(this);
		var target = $(this).attr("name");

		if ($(this).val() == "팔로잉") {
			$.ajax("/follow/delete.do", {
				"method" : "post",
				"async" : true,
				"data" : {
					"owner" : owner,
					"target" : target
				}
			}).done(function(btnFollow) {
				console.log("삭제 들어왔다.");
				src.val("팔로우");
				src.attr("name", target);
			});
			
		} else {
			$.ajax("/follow/insert.do", {
				"method" : "post",
				"async" : true,
				"data" : {
					"owner" : owner,
					"target" : target
				}
			}).done(function(btnFollowing) {
				console.log("들어왔다." + src);
				src.val("팔로잉");
				src.attr("name", target);
			});
		}
	});
	likeList();
	function likeList() {
		var boardid = [];
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
				$("#top_" + val[i].boardId).val(val[i].count + "개");
			}
			console.log(boardid);
			List(boardid);
		})

	};

	function List(boardid) {
	/* 	var boardid = [];

		$(".tool").each(function() {
			boardid.push($(this).attr("name"));
		}); */
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
						$("#top_" + val[i].boardId).attr(
								"title",
								"좋아요 "
										+ $("#top_" + val[i].boardId)
												.val() + "댓글 "
										+ val[i].count + "개");
						//reply.appent("댓글 "+ val[i].count + "개");
					}
				})
	};
</script>
</html>