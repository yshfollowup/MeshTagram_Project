<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<div style="height:70px;"></div>


<div style="clear:both;"></div>	
<div class="container-fluid text-center">    
  <div class="row content">
    <div class="col-sm-2 sidenav">
    </div>
    <div class="col-sm-8 text-left"> 
	  <c:forEach var="obj" items="${allPost}">
		<div align="center" style="min-height: 590px;">
		  <section style="float: center; width: 70%;">
		  	<div>
		  	<c:choose>
		  		<c:when test="${empty obj.profile}">
		  			<img src="/images/insta.jpg" style="width: 30px; height: 30px; border-radius: 30px" id="writer">
		  		</c:when>
		  		<c:otherwise>
				  	<img src="${applicationScope.path }${obj.profile}" style="width: 30px; height: 30px; border-radius: 30px" id="writer">
		  		</c:otherwise>
		  	</c:choose>
		  	<a href="/mypage/index.do?id=${obj.id }">${obj.id }</a>
		  	</div>
			<div>
			<img src="${obj.path }${obj.image}"
					style="width: 641px; height: 641px;"  />
			</div>
			<div>
			<div>
			<button class="like" type="button">좋아요</button><span class="count"></span>
			<button type="button" class="rebt" name="${obj._id }">댓글달기</button>
			<span class="likeId"></span>
			</div>
			 <a href="/mypage/index.do?id=${obj.id }">${obj.id }</a>
			 <c:forEach items="${obj.comment }" var="comm">
			 <span>${comm }</span></c:forEach>
				<c:forEach items="${obj.tags }" var="tag">
				<a href="/account/search.do?tag=${fn:replace(tag,'#','%23') }">${tag }</a>
				</c:forEach>
			<div>
			<span class="re"></span>
			</div> 
			<hr/>
				<div class="parent">
					<input type="text" value="" class="reply" aria-label="${obj._id }"  style="resize: none; width: 100%; padding: 2px; font-family: 맑은고딕" placeholder="댓글쓰기">
				</div>
			</div>
		  </section>
	  </div>
	</c:forEach>
  </div>
  <script>
  	// 포커스
  	$(".reply").on("click",function(){
  			$('input').focus();
  	});
  	// 댓글 쓰기
	$(".reply").on("change",function(){
		var id = $(this).attr("aria-label");
		var reid="${cookie.setId.value}";
		var ment=$(".reply").val();
		console.log(id+ment);
		$.ajax("/addreply.do", {
			"method" : "post",
			"async" : true,
			"data" : {
				"boardId" : id,
				"reid": reid,
				"ment" : ment
			}
		}).done(function(obj){
			console.log($(this).val());
			$(".re").html(obj.ment);
			$(this).empty();
		})
	});
	List();
	//댓글 리스트 자동 생성
	function List(){
		var boardid;
		
		$(".rebt").each(function(){
			boardid+=","+($(this).attr("name"));
		});
		var reid="${cookie.setId.value}";
		$.ajax("/listReply.do", {
			"method" : "get",
			"async" : true,
			"data" :{
				"boardId" : boardid
			}
		}).done(function(val){
			
			for(var i=0; i <val.length; i++){
				if(boardid[i] == val[i].boardId){
				console.log(val[i].boardId);
					var reply= val[i].ment+val[i].id+val[i].date;				
					$(".re").html(reply);
				}
			}
		})
	}
	//좋아요 ....
  $(".like").on("click", function(){
	  console.log("좋아요 들어왔다");
	  var reid="${cookie.setId.value}";
	  var boardid=$(".rebt").attr("name");
	  var like="좋아요";
	  $.ajax("/likeBoard.do",{
		  "method" : "get",
		  "async" : true,
		  "data" :{
			  "boardId" : boardid,
			  "id" : reid,
			  "like" : like,
		  }
	  }).done(function(val){
		  $(".count").html(val.size);
		  $(".likeId").html(val.id);
	  })
  });
  	likeList();
	function likeList(){
		var reid="${cookie.setId.value}";
		var boardid;
		$(".rebt").each(function(){
			boardid+=","+($(this).attr("name"));
		});
		$.ajax("/likeList.do",{
			"method" : "get",
			"async" : true,
			"data" : {
				"boardId": boardid,
				"id" : reid
			}
	}).done(function(val){
		console.log(val+"댓글 좋아요");
	})
};
  </script>
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
  </div>
</div>

