$(function () {
    $("#best").click(function(){
        $.ajax({
            url : "/TunaMusic/myMusicShareBoard/article/best.do",
            type : "GET",
            data :{
                articleNo : $("#articleNo").val()
            },
            success : function (data) {
                $("#best").html(data.best);
            }
        });
    });
    $("#bad").click(function(){
        $.ajax({
            url : "/TunaMusic/myMusicShareBoard/article/bad.do",
            type :"GET",
            data :{
                articleNo : $("#articleNo").val()
            },
            success : function (data) {
                $("#bad").html(data.bad);
            }
        })
    });
});