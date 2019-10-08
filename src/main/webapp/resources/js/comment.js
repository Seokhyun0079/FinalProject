$(function(){
    $.ajax({
        url: "/freeboard/comment/list.do",
        type: "GET",
        data: {"articleNo" :  $("#no").val()},
        success: function (data) {
            for(var i = 0; i < data.result.length; i++){
                $("#comment-list").append('<div><b>'+data.result[i].id+'</b> ' + data.result[i].content+'</div>');
            }
            $("#count").val(data.count);
        },
    });
    $("#comment-buutton").click(function(){
        $.ajax({
           url : "/musicBoard/comment/write.do",
            type : "GET",
            data : {"articleNo" : $("#article_no").val()},
            success : function(data){
               for(var i = 0 ; i < data.result.length; i++){
                   $("#comment-list").appendChild("<h5>예지는 바보다</h5>");
               }
            }
        });
    });
});