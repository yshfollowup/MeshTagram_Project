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
    <input type="button" id="follow" value="팔로우" name="${aDTO.id }"/> 
    
    	<div>${aDTO.intro }</div>
    <div>
    		게시물 ${fn:length(myPost)} <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal1">팔로워 ${fn:length(follower )}</button>
  			<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal2">  팔로우${fn:length(following)}</button>
	  </div>
	  </section>
	  </div>
	  <div align="center" style="min-height: 100px;"></div>
	  <div>
	  <c:forEach var="obj" items="${myPost }">
		<div align="left" style="min-height: 590px;">
		  <section style="float: center; width: 70%;">
		  	<div style="float: left; width: 33%;">
		  	<small><c:forEach items="${obj.tags }" var="tag">
				<a href="/account/search.do?tag=${fn:replace(tag,'#','%23') }">${tag }</a>
				</c:forEach> </small>
				<div class="mouseIn">
				<a href="#" data-toggle="tooltip" title="좋아요 ${fn:length(like)}개 댓글${fn:length(reply)}">
				<img src="${obj.path }${obj.image}"
					style="width: 230px; height: 230px;" class="image">
				</a>
				</div>
			  </div>
			 </section>
			</div>
		</c:forEach>
		</div>
	  	</div>
	</div>
	
	
	<script>
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
			console.log("들어왔다."+obj2.result);
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
	$("#follow").click(function() {
		followClick();
	});
	
	function followClick(){
		var setid="${cookie.setId.value}";
		var src= $("#follow");
		var a = $("#follow").attr("name");
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
 
	
