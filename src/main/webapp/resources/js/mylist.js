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

var zeroTenFive = -0.5;
var opacity = 0.5;
var playingIndex = 0;
$(function () {
    $("#list-button").click(function(){
        $('#my-list-div').css('opacity', opacity);
        opacity += zeroTenFive;
        zeroTenFive *= -1;
    });
});
function myListClickEvent(fileName, index, length){

    $("#"+playingIndex).css('font-size', 14);
    $("#"+index).css('font-size', 20);
    playingIndex = index;
    $('#my-list-player').attr('src', '/TunaMusic/resources/upload/'+fileName);
    document.getElementById('my-list-player').play();
    $("#my-list-player").on('ended', function(){
        $('#'+(playingIndex+1 == length ? 0 : playingIndex+1)).trigger('click');
    });
}