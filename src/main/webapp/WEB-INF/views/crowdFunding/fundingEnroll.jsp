<%--
  Created by IntelliJ IDEA.
  User: Yeji
  Date: 2019-10-10
  Time: 오후 12:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.Calendar"%>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Title -->
    <title> TUNA MUSIC | CrowdFunding</title>

    <!-- Favicon -->
    <link rel="icon" href="/TunaMusic/resources/img/core-img/favicon.ico">

    <!-- Stylesheet -->
    <link rel="stylesheet" href="/TunaMusic/resources/style.css">

    <!-- Smart Editor required -->
    <script src="https://code.jquery.com/jquery-latest.js"></script>
    <script type="text/javascript" src="/TunaMusic/resources/editor/js/HuskyEZCreator.js" charset="utf-8"></script>
</head>
<body>
<!-- Preloader -->
<!--
<div id="preloader">
    <div>
        <div class="spinner">
            <div class="double-bounce1"></div>
            <div class="double-bounce2"></div>
        </div>
        <span>Wait, please...</span>
    </div>
</div>
 -->
<!-- /Preloader -->

<!-- Top Login Area Start -->
<%@ include file="/WEB-INF/views/common/iconmodal.jsp"%>
<!-- Top Login Area End -->

<!-- Social Share Area Start -->
<%@ include file="/WEB-INF/views/common/mylist.jsp"%>
<!-- Social Share Area End -->

<!-- Header Area Start -->
<header class="header-area">
    <%@ include file="/WEB-INF/views/common/titlebar.jsp"%>
</header>
<section class="uza-news-area section-padding-0-80">
    <form action="/TunaMusic/crowdFunding/insertFunding.do" method="post" enctype="multipart/form-data">
        <div class="container" style="margin-top: 50px">
            <div class="row">
                <div class="col-12">
                    <div class="section-heading text-center">
                        <%--style="padding: 30px 30px 0px 0px"--%>
                        <div class="d-flex justify-content-center">
                            <div class="form-group">
                                <h6>프로젝트명</h6>
                                <input type="text" class="form-control" id="ftitle" name="ftitle" style="width: 600px; font-size: 24px; text-align: center" placeholder="프로젝트명을 입력해주세요" max="60">
                            </div>
                        </div>
                        <div class="d-flex justify-content-center">
                            <div class="form-group">
                                <h6>팀명</h6>
                                <input type="text" class="form-control" id="fcreator" name="fcreator" style="width: 300px; font-size: 16px; text-align: center" placeholder="창작자 여러분의 팀명을 입력해주세요" max="30">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="container">
            <div class="razo-blog-masonary">
                <div class="row razo-blog-masonary-item">
                    <div style="width: 730px; height: 486px; padding: 15px; overflow: hidden; text-align: center; ">
                        <img src="/TunaMusic/resources/img/etc-img/noimage.png" alt="" style="width: 730px; height: auto;">
                        <!-- <img src="./img/tunamusuc_funding_banner.png" alt=""> -->
                    </div>
                    <div style="width: 350px; height: 486px; padding: 15px;">
                        <h6>목표 금액</h6>
                        <input type="number" id="fgoal" name="fgoal" class="form-control" min="0">
                        <br>

                        <%!
                            SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
                            Calendar cal = Calendar.getInstance();
                            String res = new SimpleDateFormat("yyyy-MM-dd").format(System.currentTimeMillis());
                        %>
                        <%--<%--%>
                            <%--cal.setTime(new Date());--%>
                            <%--cal.add(Calendar.DAY_OF_MONTH, 60);--%>
                        <%--%>--%>
                        <h6>프로젝트 마감일</h6>
                        <input type="date" id="endDate" name="endDate" min="<%=res%>" max="2012-12-29"  class="form-control">
                        <br>

                        <h6>썸네일 이미지</h6>
                        <input type="file" id="fuploadFile" name="fuploadFile">
                        <br><br>

                        <h6>후원 리워드</h6>
                        <input type="button" class="razo razo-btn" onclick="rewardPopup();" value="추가하기">
                        <br>

                        <input type="hidden" name="fno" id="fno" value="0">
                        <input type="hidden" name="fbacker" id="fbacker" value="0">
                        <input type="hidden" name="famount" id="famount" value="0">
                    </div>
                </div>
            </div>
        </div>
        <hr>

        <div class="container" style="margin-top: 30px">
            <div class="row razo-blog-masonary">
                <!-- <div class="row razo-blog-masonary-item"> -->
                <div class="col-12">
                    <h6>창작자 소개</h6>
                    <textarea name="fcreatorInfo" rows="3" cols="100" placeholder="창작자 여러분을 소개해주세요"></textarea>
                    <br><br>
                    <h6>프로젝트 스토리</h6>
                    <textarea name="fcontent" id="fcontent" rows="10" cols="100"></textarea>
                    <%--placeholder="여러분의 멋진 프로젝트 스토리를 들려주세요"--%>
                    <div class="col-8" style="margin-top: 30px; text-align: center">
                        <input type="submit" class="razo razo-btn" id="writebtn" name="writebtn" value="저장">
                    </div>
                </div>
                <!-- </div> -->
            </div>
        </div>
    </form>
</section>
<!-- All JS Files -->

<!-- jQuery -->
<script src="/TunaMusic/resources/js/jquery.min.js"></script>
<!-- Popper -->
<script src="/TunaMusic/resources/js/popper.min.js"></script>
<!-- Bootstrap -->
<script src="/TunaMusic/resources/js/bootstrap.min.js"></script>
<!-- All Plugins -->
<script src="/TunaMusic/resources/js/razo.bundle.js"></script>
<!-- Active -->
<%--<script src="/TunaMusic/resources/js/default-assets/active.js"></script>--%>
<script>
    function rewardPopup() {
        var url = "/TunaMusic/crowdFunding/insertReward.do";
        var name = "reward_popup";
        var option = "width = 500, height = 500, top = 100, left = 200";
        window.open(url, name, option);
    }
</script>
<script type="text/javascript">
    //전역변수
    var oEditors = [];

    //스마트에디터 프레임생성
    nhn.husky.EZCreator.createInIFrame({
        oAppRef: oEditors,
        elPlaceHolder: "fcontent",
        sSkinURI: "/TunaMusic/resources/editor/SmartEditor2Skin.html",
        htParams:{
            bUseToolbar:true,
            bUseVerticalResizer:true,
            bUseModeChanger:true,
            fOnBeforeUnload: function () {
                alert("Success!!");
            },
        },
        fOnAppLoad:function(){
            oEditors.getById["fcontent"].exec("PASTE_HTML", ["여러분의 멋진 프로젝트 스토리를 들려주세요"])
        },
        fCreator:"createSEditor2"
    });
</script>
<script>
    window.onload = function () {
        var btn = document.getElementById("writebtn");
        console.log(btn.form);
        btn.onclick = function () {
            submitContents(btn);
        }
    }
    function submitContents(clickedObj) {
        oEditors.getById["fcontent"].exec("UPDATE_CONTENTS_FIELD", []);

        try{
            clickedObj.form.submit();
        }catch(e) {
            console.log(e);
        }
    }
</script>
</body>
</html>