$(function(){
    $.ajax({
        url: "/TunaMusic/musicBoard/comment/list.do",
        type: "GET",
        data: {
            "articleNo" : $("#articleNo").val(),
        },
        success: function (data) {
            for(var i = 0 ; i < data.result.commentList.length; i++){
                console.log(data.result.commentList[i].replyNo);
                $("#comment-list").append('<li class="single_comment_area">' +
                    '                                 <div class="comment-content d-flex">\n' +
                    '                                    <!-- Comment Author -->\n' +
                    '                                    <div class="comment-author">\n' +
                    '                                        <img src="/TunaMusic/resources/img/bg-img/15.jpg" alt="author">\n' +
                    '                                    </div>\n' +
                    '                                    <!-- Comment Meta -->\n' +
                    '                                    <div class="comment-meta">\n' +
                    '                                        <a href="#" class="author-name">'+data.result.commentList[i].id+'<span class="post-date">- May 14, 2018</span></a>\n' +
                    '                                        <p>'+data.result.commentList[i].content+'</p>\n' +
                    '                                        <a href="#" class="like">Like</a>\n' +
                    '                                        <a href="#" class="reply">Reply</a>\n' +
                    '                                    </div>\n' +
                    '                                </div></li>');
            }
        },
    });
    $("#comment-buutton").click(function(){
        $.ajax({
            url: "/TunaMusic/musicBoard/comment/write.do",
            type : "GET",
            data : {
               "articleNo" : $("#articleNo").val(),
                "id" : $("#id").val(),
                "content" : $("#message").val()
            },
            success : function(data){
               for(var i = 0 ; i < data.result.commentList.length; i++){
                   $("#comment-list").append('<li> ㅇ </li>');
               }
            }
        });
    });
});