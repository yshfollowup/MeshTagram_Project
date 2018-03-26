/**
 * 메인 페이지에 들어갈 함수
 */
function delReply(id, boardid, ment){
	console.log("delReply 받음"+id+boardid+ment);
	$.ajax("/delReply.do",{
		"method" : "get",
		"async" :true,
		"data" : {
			"boardid" : boardid,
			"id" : id,
			"ment" : ment
			
		}
	}).done(function(val){
		console.log("댓글리스트 받는다");
		List(id);
	})
}
function check(setid) {
	var src = $(".follow");
	var a = $(".follow").attr("name");
	
	console.log(setid+a+src.length);
	for(var i=0; i<src.length;i++){
		var k=0;
		a=src[i].name;
		// console.log("아이디"+a);
	$.ajax("/check.do", {
		"method" : "get",
		"async" : true,
		"data" : {
			"owner" : setid,
			"target" : a
		} 
	}).done(function(obj2) {
		console.log("들어왔다." + obj2.result+$(src[i]).val("팔로잉"));
		if (obj2.result == false) {
			var int=0;
			int=i;
			$(src[k]).val("팔로잉");
			$(src[i]).attr("name",a);
			k++;
		} else {
			var int=0;
			int=i;
			$(src[k]).val("팔로우");
			$(src[i]).attr("name", a);
			k++;
		}
	});
	
	}
};
function followClick(setId,target,src,aa) {
	console.log(setId+target,src+aa);
	if (aa == "팔로잉") {
		console.log("팔로잉이 들어왔다.")
		$.ajax("/follow/delete.do", {
			"method" : "get",
			"async" : true,
			"data" : {
				"owner" : setId,
				"target" : target
			}
		}).done(function(obj2) {
			console.log("삭제 들어왔다.");
			src.val("팔로우");
			src.attr("name", target);
		});
	} else {
		console.log(target+"추가추가");
		$.ajax("/follow/insert.do", {
			"method" : "get",
			"async" : true,
			"data" : {
				"owner" : setId,
				"target" : target
			}
		}).done(function(obj) {
			console.log("들어왔다." + src);
			src.val("팔로잉");
			src.attr("name", target);
		});
	}
}

function likeList(setid) {
	var boardid=[];
	$(".rebt").each(function() {
		boardid.push($(this).attr("name"));
	});
	// console.log(boardid);
	$.ajax("/likeList.do", {
		"method" : "get",
		"async" : true,
		"data" : {
			"boardId" : boardid
		}
	}).done(function(val) {
		// console.log(val + "댓글 좋아요ㅋㅋㅋ");
		// console.log(val.length+"크키");
		for (var i = 0; i < val.length; i++) {
			$("#cnt_" + val[i].boardId).html( val[i].count);
			if(val[i].id==setid){
				$("#like_"+val[i].boardId).hide();
				$("#dislike_"+val[i].boardId).show();
				console.log(val[i].id+setid+"좋아요 리스트다");
				$("#like_"+val[i].boardId).val(val[i].objectId);
				
			}
			// console.log($("#like_"+val[i].boardId).val()+"좋아요리스트 번호");
		}
	})
};

function List(setid) {
	var boardid=[];
	console.log("댓글 리스트 보여주기");
	$(".rebt").each(function() {
		boardid.push($(this).attr("name"));
	});
	 console.log(boardid.length);
	 if(boardid.length>0){
		 
	
	$.ajax("/listReply.do", {
		"method" : "get",
		"async" : true,
		"data" : {
			"boardId" : boardid
		}
	}).done(function(val){
		var boardid = [];
		var reply = [];
		$(".rebt").each(function() {
			boardid.push($(this).attr("name"));
			reply.push($(this).attr("name"));
		});
		// console.log(val);
		for (var i = 0; i < val.length; i++) {
			$("#sp_" + val[i].boardId).val("");
			var dd="";
			if(val[i].reid == setid){
				var s=val[i].ment;
				// console.log("댓글버튼"+setid+s);
				dd="<button type=\"button\" class=\"del\" name="+val[i].boardId+" id=\""+val[i].ment+"\" >삭제룽</button>";
			}
			$("#sp_" + val[i].boardId).append("<a href=/search.do?id="+val[i].reid+">"+val[i].reid+"</a>" + "&emsp; <span id=\"ment_" + val[i].ment+" class=\"ment\" name="+val[i].ment+" >"+val[i].ment+"</span>" +"\t\t"+dd+"<br/>");
		}
		var id=setid;
		
		$(".del").on("click", function(){
			var boardids;
			var ments;
			boardids=$(this).attr("name");
			ments=$(this).attr("id");
			console.log("댓글 삭제할거다"+id+boardids+ments);
			delReply(id,boardids,ments);
		});
	});
	 }
};