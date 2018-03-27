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
							<li><a href="#${obj.ID }"><span id="${obj.ID}"
									class="mesen" name="${obj._id }" >${obj.ID }</span></a></li>
					</ul>
				</c:forEach>
			<div align="right">
				<!--  height 고정 / max-height 최대고정 / min-height 최소고정-->
				<div id="chatBoard" style=" width: 100%; height: 80%; overflow-y: scroll;" >
					<span id="showdm" style=" text-align: right;"></span>
					<div style="text-align: left; " id="showre"></div>
				</div>
				<hr />
			<div align="right">
				<input type="file"  id="upload" value="이미지 파일 업로드" />
			</div>
			<div>
				<input type="text" name="target" id="sender">
			</div>
			</div>
		</div>
			</div>
	</div>

</body>
<script>
var setid = "${cookie.setId.value}";
	$(".mesen").on("click", function(){
		var reid=$(this).html();
		console.log("들어왔다."+reid);
		findAllMessage(reid);
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
	function showMessage(){
		senderId=[];
		$(".mesen").each(function(){
			senderId.push($(this).attr("name"));
		});
		console.log(senderId);
		$.ajax("/direct/senderId.do",{
				"method" : "get",
				"async" : true,
				"data":{
					"sender" : setid,
					"target" :senderId
				}
		
		}).done(function(val){
			
			
		});
		
		
	}
	
	
	function findAllMessage(reid){
		var code;
		console.log(reid);
		$.ajax("/direct/showMessage.do", {
			"method" : "post",
			"async" : true,
			"data" : {
				"sneder" : setid,
				"target" :reid
			}
		}).done(function(val) {
			console.log(val);
			$("#showdm").html("");
			$("#showre").html("");
			for(var i=0; i<val.length; i++){
				console.log(val[1].content+val.length);
				if(val[i].sender == setid){
					$("#showdm").append("<div id="+val[i].sender+"\" style=\"border: 1px solid black;\">"+val[i].sender+":"+val[i].content+"</div>"+"<br/>");
				}else{
					$("#showre").append("<div id="+val[i].target+"\" style=\"border: 1px solid black;\">"+val[i].target+":"+val[i].content+"</div>"+"<br/>");
				}
				
			}
			$("#charBoard").scrollTop();
			
	$("#sender").on("change", function() {
		var content=$(this).val();
		var scope=0;
		var like=0;
		if (content.length == 0) {
			window.alert("댓글을 작성해주세요.");
			return;
		}
		console.log("채팅을 치자");
			$("#sender").val("");
		$.ajax("/direct/insertMessage.do", {
			"method" : "get",
			"async" : false,
			"data" : {
				"sender" : setid,
				"target" : reid,
				"content" : content,
				"like" : like,
				"scope" : scope
			}
		}).done(function(val) {
			console.log(val);
			findAllMessage(reid);
		})
	});
  });
		
};
</script>
</html>