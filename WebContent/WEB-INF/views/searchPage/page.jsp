<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!-- 바디 페이지 -->
<div class="container-fluid text-center">    
  <div class="row content">
    <div class="col-sm-2 sidenav">
    </div>
    <div class="col-sm-8 text-left"> 
    <div style="float: left; width:40%">
    <c:choose>
	  <c:when test="${empty aDTO.profile}">
		 <img src="/images/insta.jpg" style="width: 200px; height: 200px; border-radius: 200px" id="writer">
	  </c:when>
	  <c:otherwise>
	  	<img src="${applicationScope.path }${aDTO.profile}" style="width: 200px; height: 200px; border-radius: 200px" id="writer">
	  </c:otherwise>
	</c:choose>
    </div>
    <div>
    <section>
    <div style="font-size: 50px;">${aDTO.id}</div>
    <input type="button" id="follow" class="follow" value="팔로우" name="${aDTO.id }"/>  <button type="button" id="bt"  value="${applicationScope.path }" name="${aDTO.id }" class="btn btn-info" data-toggle="collapse" data-target="#demo">추천계정</button>

    
    	<div>${aDTO.intro }</div>
    <div>
    		게시물 ${fn:length(myPost)} <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal1">팔로워 ${fn:length(follower )}</button>
  			<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal2">  팔로우${fn:length(following)}</button>
	  </div>
	  </section>
	  </div>
	    <div id="demo" class="collapse">
	    추천계정

  </div>
	  <div align="center" style="min-height: 100px;"></div>
	  <div>
	  <c:forEach var="obj" items="${myPost }">
		  	<p style="float: left; width: 33%;">
		  	<small><c:forEach items="${obj.tags }" var="tag">
				<a href="/account/search.do?tag=${fn:replace(tag,'#','%23') }">${tag }</a>
				</c:forEach> </small> <br/>
				<a href="${applictionScope.path}/detail/detail.do?boardid=${obj._id }" data-toggle="tooltip" id="top_${obj._id }" name="${obj._id }" class="tool" title="">
				<img src="${obj.path }${obj.image }"
					style="width: 230px; height: 230px;" class="image">
				</a>
			  </p>
		</c:forEach>
		</div>
	  	</div>
	</div>
	
	
	
	
	<script>
	var setid = "${cookie.setId.value}";
	likeList();
	$("#bt").on("click",function(){
		$("#demo").html("");
		var id=$("#bt").attr("name");
		var path=$("#bt").val();
		$.ajax("/reomid.do", {
			"method" : "get",
			"async" : true,
			"data" :{
				
				"targetId" : id,
			}
		}).done(function(val){
			//console.log(val);
			
			$.ajax("/checkFollow.do",{
				"method" : "get",
				"async" : true,
				"data" : {
					"setId" : setid
				}
			}).done(function(val2){
				
				for(var i=0; i<val.length; i++){
					var fbt;
					var image=val[i].PROFILE;
					var profile;
					if(val[i].PROFILE !=null){
						profile="<img src="+path+image+" style=\"width: 30px; height: 30px; border-radius: 30px\" class=\"recomId\">"
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
							fbt= "<input  type=\"button\" name="+val[j].ID+"\ class=\"follower\" value=\"팔로우\"/>";
							$("#demo").append("<a href=\"/search.do?id="+val[i].TARGET+"\">"+val[i].TARGET+"<br/>"+"</a>"+profile+"<br/>"+fbt);
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
	});
	
	
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
				$("#top_" + val[i].boardId).val( val[i].count+"개");
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
						var reply=$("#top_" + val[i].boardId).val();
						console.log(reply);
						$("#top_" + val[i].boardId).attr("title","좋아요 " + $("#top_"+val[i].boardId).val()+"댓글 "+ val[i].count + "개");
						//reply.appent("댓글 "+ val[i].count + "개");
					}
				})
	};
	$(document).ready(function(){
	    $('[data-toggle="tooltip"]').tooltip();   
	});
	//팔로우를 했는지 체크 하는 함수
	function check(){
		
		var setid="${cookie.setId.value}";
		var src= $("#follow");
		var a = $("#follow").attr("name");
		$.ajax("/check.do",{
			"method" : "get",
			"async" : true,
			"data" :{
				"owner" : setid,
				"target" : a
			}
		}).done(function(obj2){
			console.log("들어왔다.팔로우 체크"+obj2.result);
				
			if(obj2.result == false){
				console.log("들어왔다."+obj2.result);
				src.val("팔로잉");
				src.attr("name", a);
			}else{
			src.val("팔로우");
			src.attr("name", a);
			}
				
		});
	};
	check();
	$(".follow").click(function() {
		var src= $(".follow");
		var a = $(".follow").attr("name");
		followClick(src,a);
	});
	
	function followClick(src,a){
		var setid="${cookie.setId.value}";
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
				"owner" : "${cookie.setId.value}",
				"target" : a
			}
		}).done(function(obj){
			console.log("들어왔다."+src);
			src.val("팔로잉");
			src.attr("name", a);
		});
		}
	}

	</script>
  <!-- Modal -->
<div id="myModal1" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
      <c:forEach var="obj" items="${follower }">
      <p style="float: left; width: 25%;">
			<c:choose>
				<c:when test="${empty obj.profile }">
					<img src="/images/insta.jpg" style="width: 30px; height: 30px; border-radius: 30px" id="preview">
				</c:when>
				<c:otherwise>
					<img src="${applicationScope.path }${obj.profile}" style="width: 30px; border-radius: 100%" id="profile" />
				</c:otherwise>
			</c:choose>
			<a href="/search.do?id=${obj.id}" name="id">${obj.id }</a>
			<input  type="button" name="${obj.id }"   value="팔로우" class="follower"/>
		</p>
  	</c:forEach>
  	</div>
    </div>
  </div>
</div>

  <!-- Modal -->
<div id="myModal2" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
      <c:forEach var="obj" items="${following }">
      <p style="float: left; width: 25%;">
			<c:choose>
				<c:when test="${empty obj.profile }">
					<img src="/images/insta.jpg" style="width: 30px; height: 30px; border-radius: 30px" id="preview">
				</c:when>
				<c:otherwise>
					<img src="${applicationScope.path }${obj.profile}" style="width: 30px; border-radius: 100%" id="profile" />
				</c:otherwise>
			</c:choose>
			<a href="/search.do?id=${obj.id}" name="id">${obj.id }</a>
			<input  type="button" name="${obj.id }"  value="팔로잉" class="follower"/>
		</p>
  	</c:forEach>
  	</div>
    </div>
  </div>
</div>

 <!-- 사이드 페이지 -->
    <div class="col-sm-2 sidenav">
      <div class="well">
      <a href="/mypage/index.do?id=${aDTO.id }">
      <c:choose>
      <c:when test="${empty aDTO.profile }">
     	<img src="/image/insta.jpg" style="width: 30px; height: 30px; border-radius: 30px" id="profile">
      </c:when>
      <c:otherwise>
      <img src="${obj.path }${obj.image}"
					style="width: 30px; height: 30px;" id="profile"/>
      </c:otherwise>
      </c:choose>
        ${aDTO.id }</a>
      </div>
      <div class="well">
        <p>스토리</p>
        <p>회원님이 팔로우하는 사람들의 스토리가 여기에 표시됩니다.
        </p>
      </div>
      <div class="well">
        <div>@copyright</div>
        </div>
    </div>
<script>
	//팔로우 버튼 액션
	$(".follower").click(function() {
		var setid="${cookie.setId.value}";
		var src =$(this);
		var a = $(this).attr("name");
		
		if($(this).val() == "팔로잉"){
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
				"owner" : "${cookie.setId.value}",
				"target" : a
			}
		}).done(function(obj){
			console.log("들어왔다."+src);
			src.val("팔로잉");
			src.attr("name", a);
		});
		}
	});

</script>
  
  </div>
 
	
