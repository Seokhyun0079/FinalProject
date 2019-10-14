$(function(){
    $.ajax({
        url : "/TunaMusic/myMusic/list.do",
        type : "GET",
        data :{},
        success : function(data){
            console.log(data);
        }
    });
});