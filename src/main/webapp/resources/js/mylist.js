$(function(){
    $.ajax({
        url : "/TunaMusic/myMusic/list.do",
        type : "GET",
        data :{},
        success : function(data){
            console.log(data);
            for(var i = 0; i < data.result.length; i++){
                $("#my-list-div").append('<div class="my-list-element" id="'+data.result[i].fileName+'" onclick="myListClickEvent(\''+data.result[i].fileName+'\');">'+data.result[i].title+'</div>'+'<br>');
                console.log($("#my-list-div"));
            }
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
                alert("My List!");
            }
        });
    });
});