$(function(){
    $.ajax({
        url : "/TunaMusic/myMusic/list.do",
        type : "GET",
        data :{},
        success : function(data){
            console.log(data.test);
        }
    });
    $("#add-my-music").click(function(){
        $.ajax({
            url : "/TunaMusic/myMusic/add.do",
            type : "GET",
            data : {
                "articleNo" : $("#articleNo").val(),
            },
            success : function(data){
                console.log("마이리스트 추가 성공");
            }
        });
    });
});