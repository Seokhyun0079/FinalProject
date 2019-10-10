$(function(){
    $.ajax({
        url: "/TunaMusic/musicBoard/comment/list.do",
        type: "GET",
        data: {
            "articleNo" : $("#articleNo").val(),
        },
        success: function (data) {
            for(var i = 0 ; i < data.result.commentList.length; i++){
                console.log(data.result.commentList[i]);
                if(data.result.commentList[i].replyNo==0){
                    $("#comment-list").append('<li class="single_comment_area" id="i'+data.result.commentList[i].commentNo+'">' +
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
                        '                                        <a href="#comment-list" id ="'+data.result.commentList[i].commentNo+'" class="reply">Reply</a>\n' +
                        '                                    </div>\n' +
                        '                                </div></li>');
                }else{
                    $("#i"+data.result.commentList[i].replyNo+"").append('                                <ol class="children">\n' +
                        '                                    <li class="single_comment_area">\n' +
                        '                                        <!-- Comment Content -->\n' +
                        '                                        <div class="comment-content d-flex">\n' +
                        '                                            <!-- Comment Author -->\n' +
                        '                                            <div class="comment-author">\n' +
                        '                                                <img src="/TunaMusic/resources/img/bg-img/16.jpg" alt="author">\n' +
                        '                                            </div>\n' +
                        '                                            <!-- Comment Meta -->\n' +
                        '                                            <div class="comment-meta">\n' +
                        '                                        <a href="#" class="author-name">'+data.result.commentList[i].id+'<span class="post-date">- May 14, 2018</span></a>\n' +
                        '                                        <p>'+data.result.commentList[i].content+'</p>\n' +
                        '                                        <a href="#" class="like">Like</a>\n' +
                        '                                        <a href="#message" id ="'+data.result.commentList[i].replyNo+'" class="reply">Reply</a>\n' +
                        '                                            </div>\n' +
                        '                                        </div>\n' +
                        '                                    </li>\n' +
                        '                                </ol>');
                }
            }
            $(".reply").click(function () {
                $("#reply-no").val(this.id);
            });
        },
    });
    $("#comment-buutton").click(function(){
        $.ajax({
            url: "/TunaMusic/musicBoard/comment/write.do",
            type : "GET",
            data : {
               "articleNo" : $("#articleNo").val(),
                "replyNo":$("#reply-no").val()  ? $("#reply-no").val() : 0,
                "id" : $("#id").val(),
                "content" : $("#message").val()
            },
            success : function(data){
                $("#comment-list").html("");
                for(var i = 0 ; i < data.result.commentList.length; i++){
                    console.log(data.result.commentList[i]);
                    if(data.result.commentList[i].replyNo==0){
                        $("#comment-list").append('<li class="single_comment_area" id="i'+data.result.commentList[i].commentNo+'">' +
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
                            '                                        <a href="#message" id ="'+data.result.commentList[i].commentNo+'" class="reply">Reply</a>\n' +
                            '                                    </div>\n' +
                            '                                </div></li>');
                    }else{
                        $("#i"+data.result.commentList[i].replyNo+"").append('                                <ol class="children">\n' +
                            '                                    <li class="single_comment_area">\n' +
                            '                                        <!-- Comment Content -->\n' +
                            '                                        <div class="comment-content d-flex">\n' +
                            '                                            <!-- Comment Author -->\n' +
                            '                                            <div class="comment-author">\n' +
                            '                                                <img src="/TunaMusic/resources/img/bg-img/16.jpg" alt="author">\n' +
                            '                                            </div>\n' +
                            '                                            <!-- Comment Meta -->\n' +
                            '                                            <div class="comment-meta">\n' +
                            '                                        <a href="#" class="author-name">'+data.result.commentList[i].id+'<span class="post-date">- May 14, 2018</span></a>\n' +
                            '                                        <p>'+data.result.commentList[i].content+'</p>\n' +
                            '                                        <a href="#" class="like">Like</a>\n' +
                            '                                        <a href="#message" id ="'+data.result.commentList[i].replyNo+'" class="reply">Reply</a>\n' +
                            '                                            </div>\n' +
                            '                                        </div>\n' +
                            '                                    </li>\n' +
                            '                                </ol>');
                    }
                }
                $("#reply-no").val(0);
                $(".reply").click(function () {
                    $("#reply-no").val(this.id);
                });
            }
        });
    });
});