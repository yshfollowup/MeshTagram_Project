/**
 * 메인 페이지에 들어갈 함수
 */
function delReply(setid){
	var boardId= [];
	var ment=[];
		boardid.push($(this).attr("name"));
		ment.push($(this).attr("id"));
	$.ajax("/delReply.do",{
		"method" : "get",
		"async" :true,
		"data" : {
			"boardId" : boardId,
			"id" : setid,
			"ment" : ment
			
		}
	}).done(function(val){
		List();
		
	})
}
function check(setid) {
	var src = $(".follow");
	var a = $(".follow").attr("name");
	
	console.log(setid+a+src.length);
	for(var i=0; i<src.length;i++){
		var k=0;
		a=src[i].name;
		//console.log("아이디"+a);
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

function likeList() {
	var boardid=[];
	$(".rebt").each(function() {
		boardid.push($(this).attr("name"));
	});
	//console.log(boardid);
	$.ajax("/likeList.do", {
		"method" : "get",
		"async" : true,
		"data" : {
			"boardId" : boardid
		}
	}).done(function(val) {
		//console.log(val + "댓글 좋아요ㅋㅋㅋ");
		//console.log(val.length+"크키");
		for (var i = 0; i < val.length; i++) {
			$("#cnt_" + val[i].boardId).html("&ensp;" + val[i].count+"개");
			$("#like_"+val[i].boardId).val(val[i].objectId);
			//console.log($("#like_"+val[i].boardId).val()+"좋아요리스트 번호");
		}
	})
};

function List(setid) {
	var boardid=[];

	$(".rebt").each(function() {
		boardid.push($(this).attr("name"));
	});
	//console.log(boardid);
	$.ajax("/listReply.do", {
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
					var dd="";
				for (var i = 0; i < val.length; i++) {
					$("#sp_" + val[i].boardId).val("");
					if(val[i].reid == setid){
						var s=val[i].ment;
						//console.log("댓글버튼"+setid+s);
						dd="<button type=\"button\" class=\"delbt\" name="+val[i].boardId+" id=\""+s+"\" >삭제</button>";
					}
						$("#sp_" + val[i].boardId).append("<a href=/search.do?id="+val[i].reid+">"+val[i].reid+"</a>" + "&emsp; <span id=\"ment_" + val[i].ment+" class=\"ment\" name="+val[i].ment+" >"+val[i].ment+"</span>" +"\t\t"+dd+"<br/>");
						
						
				}
			})
};