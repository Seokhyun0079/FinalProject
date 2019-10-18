$(function(){
    var uri = "/TunaMusic/myMusic/add.do";
    $.ajax({
        url : "/TunaMusic/myMusic/list.do",
        type : "GET",
        data :{},
        success : function(data){
            console.log(data);
            for(var i = 0; i < data.result.length; i++){
                $("#my-list-div").append('<div class="my-list-element" id="'+i+'" onclick="myListClickEvent(\''+data.result[i].fileName+'\','+i+', '+data.result.length+');">'+data.result[i].title+'</div>');
                if($("#file-name").val() == data.result[i].fileName) uri = "/TunaMusic/myMusic/remove.do";
            }
        }
    });
    $("#add-my-music").click(function(){
        $.ajax({
            url : uri,
            type : "GET",
            data : {
                "articleNo" : $("#articleNo").val(),
            },
            success : function(data){
                alert("My List!");
            }
        });
    });
});