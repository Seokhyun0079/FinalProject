$(function () {
    $("#best").click(function(){
        $.ajax({
            url : "/TunaMusic/musicBoard/article/best.do",
            type : "GET",
            data :{
                articleNo : $("#articleNo").val()
            },
            success : function (data) {
                console.dir(data);
                $("#best").html(data.best);
            }
        });
    });
    $("#bad").click(function(){
        $.ajax({
            url : "/TunaMusic/musicBoard/article/bad.do",
            type :"GET",
            data :{
                articleNo : $("#articleNo").val()
            },
            success : function (data) {
                console.dir(data);
                $("#bad").html(data.bad);
            }
        })
    });
});