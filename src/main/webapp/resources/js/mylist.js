$(function(){
    var uri = "/TunaMusic/myMusic/add.do";
    $.ajax({
        url : "/TunaMusic/myMusic/list.do",
        type : "GET",
        data :{},
        success : function(data){
            for(var i = 0; i < data.result.length; i++){
                $("#my-list-name").append('<div class="my-list-element" id="'+i+'" onclick="myListClickEvent(\''+data.result[i].fileName+'\','+i+', '+data.result.length+');">'+data.result[i].title+' By ' +data.result[i].id+'</div>');
                if($("#file-name").val() == data.result[i].fileName){
                    uri = "/TunaMusic/myMusic/remove.do";
                    $("#add-my-music").html("-");
                }
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
                if(data.status== "add"){
                    uri = "/TunaMusic/myMusic/remove.do";
                    $("#add-my-music").html("-");
                }else if(data.status== "remove"){
                    uri = "/TunaMusic/myMusic/add.do";
                    $("#add-my-music").html("+");
                }
                $("#my-list-name").html("");
                for(var i = 0; i < data.result.length; i++){
                    $("#my-list-name").append('<div class="my-list-element" id="'+i+'" onclick="myListClickEvent(\''+data.result[i].fileName+'\','+i+', '+data.result.length+');">'+data.result[i].title+' By ' +data.result[i].id+'</div>');
                }
            }
        });
    });
});