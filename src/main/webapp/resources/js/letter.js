$(function(){
    $("#send").click( $.ajax({
        url : "/TunaMusic/letter/write.do",
        type : "POST",
        data  : {
            toId : $("#to").val(),
            message : $("#message").val()
        },
        success : function(data){
            message : $("#message").val("");
        }
    }));
});