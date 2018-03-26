<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<script type="text/javascript" src="/js/custom.js"></script>
<style>
a, b {
	text-decoration: none;
	font-family: 맑은 고딕;
}
</style>
<title>MeshTagram</title>
</head>
<body>
  
  
 <div class="container-fluid">
  <div class="row content">
    <div class="col-sm-3 sidenav">
  		<c:forEach items="${followList }" var="obj">
      <ul class="nav nav-pills nav-stacked">
        	<li><a href="#section2"><span id="${obj.ID}" class="mesen">${obj.PROFILE }${obj.ID }</span></a></li>
      </ul><br>
  		</c:forEach>
</div>
    <div align="center">
		<a href="javascript:" id="title"><b>받은 쪽지함</b></a>
	</div>
		<div align="center">
			<c:forEach items="${followingList }" var="obj">
				<a href="javascript:" id="follower">${obj }</a>
				<br />
			</c:forEach>
			<br /> <input type="text" id="sender">
		</div>
		<div align="center">
			<input type="text" id="content"
				style="width: 300px; height: 600px; padding: 10px;"
				placeholder="내용을 입력하세요">
		</div>
		<div align="right">
			<button type="button" onclick="selectLike();" id="likebt">
				<img alt="좋아요" src="" />
			</button>
			<button type="button" onclick="selectImage();" id="imagebt">
				<img alt="이미지 파일 업로드" src="" />
			</button>
			<input type="file" id="upload" />
		</div>
		<div>
			<button type="button" id="sendbt">쪽지 보내기</button>
		</div>
    	</div>
    </div>
    
</body>
<script>
var setid = "${cookie.setId.value}";
	$(".mesen").on("click", function(){
		console.log("들어왔다.");
		findAllMessage();
		
		
		
	});
	function setDigit(num, digit) {
		var zero = "";
		num = num.toString();
		if (num.length < digit) {
			for (var i = 0; i < digit; i++) {
				zero += "0";
			}
		}
		return zero + num;
	}
	
	function display() {
		var now = new Date();
		var currentHour = setDigit(now.getHours(), 2);
		var currentMinute = setDigit(now.getMinutes(), 2);
		var currentSecond = setDigit(now.getSeconds(), 2);
		var apm = "am";
		if (currentHour >= 12) {
			apm = "pm";
			currentHour = setDigit(now.getHours() - 12, 2);
		}
		$("#time").html();
	}
	
	setTimeout(display, 1000);

	$(".sendbt").on("click", function() {
		var sender = "${cookie.setId.value}";
		var receiver = $(this).attr("");
		$.ajax("/direct/insertMessage.do", {
			"method" : "get",
			"async" : false,
			"data" : {
				"me" : id,
				"target" : reid,
				"content" : content,
				"like" : like,
				"curtime" : curtime,
				"scope" : scope
			}
		}).done(function(val) {
			console.log(val);
			$("#showdm").html(val.result);
			findAllMessage();
		})
		$("#content").val("");
	});
	
	
	function findAllMessage(){
		var id = "${cookies.setId.value}";
		var content = $(this).response.json;
		var curtime = $(this).response.json;
		
		$.ajax("/direct/showMessage.do", {
			"method" : "post",
			"async" : true,
			"data" : {
				"id" : id,
				"reid" : reid,
				"content" : content,
				"like" : like,
				"curtime" : curtime,
				"scope" : scope
			}
		}).done(function(val) {
			console.log(val);
			
		});
		
	};
</script>
</html>