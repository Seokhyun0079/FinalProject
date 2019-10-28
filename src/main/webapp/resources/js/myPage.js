//-UPL_MUISC_LIST 	
$(function(){
	$.ajax({
		url: "/TunaMusic/musicBoard/article/myList.do",
		type: "GET",
		data: {},
		success: function(data){
			for(var i = 0; i < data.result.length; i++){
				$("#myUplMusic").append('<li class="lists__item">'+
						'<div class="single-music-chart style-2 d-flex align-items-center justify-content-between wow fadeInUp" data-wow-delay="100ms">'+
						'<div class="music-content d-flex align-items-center">'+
						'<div class="sl-number"><h5>●</h5></div><div class="music-thumb">'+
						'<img src="/TunaMusic/resources/albumImageUpload/'+data.result[i].albumFile+'" alt=""></div>'+
						'<div class="audio-player"><div class="audioplayer"><audio preload="auto" controls="" style="width: 0px; height: 0px; visibility: hidden;">'+
                        '<source src=""></audio><div class="audioplayer-playpause" title=""><a href="/TunaMusic/musicBoard/article/read.do?articleNo='+data.result[i].articleNo+'"></a></div><div class="audioplayer-volume"><div class="audioplayer-volume-button" title=""></div><div class="audioplayer-volume-adjust"><div><div style="width: 100%;"></div></div></div></div></div></div>'+
						'<div class="music-title"><h5>'+data.result[i].title+' - <span>'+data.result[i].nickName+'</span></h5>'+
						'</div></div><div class="music-price"><div onclick="uplDel()" style="cursor: pointer;" id="'+data.result[i].articleNo+'" class="remove-btn razo-btn">DELETE</a></div></div></li>');
			}
		}	    	
		});
});

//-UPL_MUISC_DELETE	
function uplDel(){
	var articleNo = $(event.target).attr("id");
	$.ajax({
        url : "/TunaMusic/musicBoard/article/mydelete.do",
        type : "GET",
        data : {
            "articleNo" : articleNo
        	},
        success :
         	$("#"+articleNo).parent().parent().remove() 
        })
	
}

//-FAV_MUISC_LIST
$(function(){
	$.ajax({
		url: "/TunaMusic/myMusic/list.do",
		type: "GET",
		data: {},
		success: function(data){
			for(var i = 0; i < data.result.length; i++){
				$("#myFavMusic").append('<li class="lists__item">'+
						'<div class="single-music-chart style-2 d-flex align-items-center justify-content-between wow fadeInUp" data-wow-delay="100ms">'+
						'<div class="music-content d-flex align-items-center">'+
						'<div class="sl-number"><h5>●</h5></div><div class="music-thumb">'+
						'<img src="/TunaMusic/resources/albumImageUpload/'+data.result[i].albumFile+'" alt=""></div>'+
						'<div class="audio-player"><div class="audioplayer"><audio preload="auto" controls="" style="width: 0px; height: 0px; visibility: hidden;">'+
                        '<source src=""></audio><div class="audioplayer-playpause" title=""><a href="/TunaMusic/musicBoard/article/read.do?articleNo='+data.result[i].articleNo+'"></a></a></div><div class="audioplayer-bar"><div class="audioplayer-bar-loaded"></div><div class="audioplayer-bar-played"></div></div><div class="audioplayer-time audioplayer-time-duration">…</div><div class="audioplayer-volume"><div class="audioplayer-volume-button" title=""><a href="#"></a></div><div class="audioplayer-volume-adjust"><div><div style="width: 100%;"></div></div></div></div></div></div>'+
						'<div class="music-title"><h5>'+data.result[i].title+' - <span>'+data.result[i].nickName+'</span></h5>'+
						'</div></div><div class="music-price"><div onclick="del()" style="cursor: pointer;" id="'+data.result[i].articleNo+'" class="remove-btn razo-btn">DELETE</a></div></div></li>');
			}
		}	    	
		});
});

//-FAV_MUISC_DELETE
function del(){
	var articleNo = $(event.target).attr("id");
	$.ajax({
        url : "/TunaMusic/myMusic/remove.do",
        type : "GET",
        data : {
            "articleNo" : articleNo
        	},
        success :
         	$("#"+articleNo).parent().parent().remove() 
        })
	
}

//-FAV_MUISC_DELETEALL
function Alldel(){
	$.ajax({
        url : "/TunaMusic/myMusic/deleteAll.do",
        type : "GET",
        data : {
        },
        success :
         	$("#myFavMusic").remove()
        })
	
}


// 스크롤 이동
function fnMove(pagePart){
    var offset = $("#" + pagePart).offset();
    $('html, body').animate({scrollTop : offset.top}, 400);
}
        