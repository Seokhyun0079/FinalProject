$(function(){
        $.ajax({
            url : "/TunaMusic/letter/list.do",
            type : "POST",
            data  : {
                toId : $("#to").val()
            },
            success : function(data){
                $("#letter-list").html("");
                for(var i = 0; i < data.result.length; i++){
                    if(data.result[i].toId == $("#to").val())$("#letter-list").append(drawLetter("right",data.result[i].fromId, data.result[i].message));
                    else $("#letter-list").append(drawLetter("left",data.result[i].fromId, data.result[i].message));
                }
                $("#letter-list").scrollTop($("#letter-list")[0].scrollHeight);
            }
        });
    $("#sendButton").click(
        function(){
            if($("#message").val()=="") {
                alert("메시지를 입력해주세요");
            }else {
                $.ajax({
                    url: "/TunaMusic/letter/write.do",
                    type: "POST",
                    data: {
                        toId: $("#to").val(),
                        message: $("#message").val()
                    },
                    success: function (data) {
                        $("#message").val('');
                        $("#letter-list").html("");
                        for (var i = 0; i < data.result.length; i++) {
                            if (data.result[i].toId == $("#to").val()) $("#letter-list").append(drawLetter("right", data.result[i].fromId, data.result[i].message));
                            else $("#letter-list").append(drawLetter("left", data.result[i].fromId, data.result[i].message));
                        }
                        $("#letter-list").scrollTop($("#letter-list")[0].scrollHeight);
                    }
                });
            }
        });
    $("#message").keyup(function(e){
        if(e.keyCode == 13)  $('#sendButton').trigger('click');
    });
});
drawLetter = function(float, id, message){
  return "    <table style=\"float: "+float+";\">\n" +
      "        <tr>\n" +
      "            <th><h1>"+id+" </h1></th>\n" +
      "        </tr>\n" +
      "        <tr>\n" +
      "            <th><h3>"+message+"</h3></th>\n" +
      "        </tr>\n" +
      "    </table><br><br><br><br><br><br>";
};