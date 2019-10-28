$(function() {
    $.ajax({
        url : "/TunaMusic/chart/chartOne.do",
        type : "GET",
        success : function(data){
            $("#musicPlayer").attr('src', '/TunaMusic/resources/upload/'+data.result[0].fileName);
            $("#title").html(data.result[0].title);
            console.log(data.result[0].albumFile);
            $("#albumFile").attr('src', '/TunaMusic/resources/albumImageUpload/'+data.result[0].albumFile);
        }
    });
});