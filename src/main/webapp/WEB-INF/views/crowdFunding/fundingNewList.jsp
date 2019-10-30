<%--
  Created by IntelliJ IDEA.
  User: Yeji
  Date: 2019-10-26
  Time: 오후 7:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Title -->
    <title>Razo - Radio HTML Template | FundingList</title>

    <!-- Favicon -->
    <link rel="icon" href="/TunaMusic/resources/img/core-img/favicon.ico">

    <!-- Stylesheet -->
    <link rel="stylesheet" href="/TunaMusic/resources/style.css">

</head>

<body>
<!-- Preloader -->
<!-- <div id="preloader">
    <div>
        <div class="spinner">
            <div class="double-bounce1"></div>
            <div class="double-bounce2"></div>
        </div>
        <span>Wait, please...</span>
    </div>
</div> -->
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

<!-- Event Welcome Area Start -->
<section class="event-welcome-area bg-overlay bg-img jarallax" style="background-image: url(img/bg-img/54.jpg);">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-12 col-lg-9">
                <div class="event-welcome-text text-center">
                    <!-- <span>Event start on 19 March, 2018</span> -->
                    <h2>튜나뮤직 최신 프로젝트</h2>
                    <p>튜나뮤직의 최신 크라우드 펀딩 프로젝트 목록을 보여드립니다.</p>
                    <!-- <div class="coming-soon-clock mt-30 mb-30">
                        <div id="clock"></div>
                    </div> -->
                    <br>
                    <div class="event-btn-group">
                        <a href="#" class="btn razo-btn ">내 프로젝트 등록하기</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Event Welcome Area End -->

<!-- Event Search Area Start -->
<div class="event-search-area" style="padding: 60px;">
    <div class="container">
        <div class="event-search-content" style="margin: 0px 100px;">
            <form action="#" class="search-form">
                <div class="row align-items-end">
                    <div class="col form-group">
                        <select name="" id="" class="form-control">
                            <option value="제목">제목</option>
                            <option value="내용">내용</option>
                            <option value="제목+내용">제목+내용</option>
                        </select>
                    </div>
                    <div class="col-6 form-group">
                        <input type="search" class="form-control" id="search" placeholder="검색할 단어를 입력해주세요">
                    </div>
                    <div class="col form-group text-right">
                        <button type="submit" class="btn razo-btn w-100">프로젝트 검색</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<!-- Event Search Area End -->

<!-- Razo Event Area Start -->
<section class="razo-events-area section-padding-0-80">
    <div class="container">
        <div class="row">

            <!-- Single Razo Event Area -->
            <div class="col-12">
                <c:forEach var="fd" items="${newList.pageContent}">
                    <div class="single-razo-event-area d-flex flex-wrap align-items-center mb-50 wow fadeInUp" data-wow-delay="100ms">
                        <!-- Thumbnail -->
                        <div class="event-thumbnail" style="width: 333px; height: 260px; overflow: hidden; text-align: center; display: flex">
                            <img src="/TunaMusic/resources/editor/photoUpload/${fd.fileName}" alt="" style="width: 333px; height: auto;">
                            <img src="" alt="">
                        </div>
                        <!-- Event Content -->
                        <div class="event-content d-flex align-items-center row">
                            <div class="event-text col-7">
                                <h5>${fd.ftitle}</h5>
                                <div class="event-meta">
                                    <a class="event-time"> ${fd.fcreator}</a>
                                </div>
                                    <%--<p>${fd.fcontent}</p>--%>
                                <div class="progress" style="height: 5px;">
                                    <div class="progress-bar" role="progressbar" aria-valuenow="${fd.percent}" aria-valuemin="0" aria-valuemax="100" style="width:${fd.percent}%; background-color:#dc2878"></div>
                                </div>
                                <br>
                                <div class="event-meta" style="margin: 0px">
                                    <a style="float: left">D-${fd.dDay}</a>
                                    <div class="row" style="float: right;margin: 0px">
                                        <a>${fd.famount}원</a>
                                        <a>${fd.percent}%</a>
                                    </div>
                                </div>

                            </div>
                            <!-- Event Purchase Button -->
                            <div class="event-purchase-button col">
                                <a href="#" class="btn razo-btn"> 프로젝트 보기</a>
                            </div>
                        </div>
                    </div>
                </c:forEach>

                <div class="single-razo-event-area d-flex flex-wrap align-items-center mb-50 wow fadeInUp" data-wow-delay="100ms">
                    <div class="container">
                        <a href="/TunaMusic/crowdFunding/fundingList/newList.do?page="${newList.startPage-1} class="razo razo-btn mt-50">Previous</a>
                        <c:forEach begin="${newList.startPage}" end="${newList.endPage}" step="1" varStatus="status">
                            <<a href="/TunaMusic/crowdFunding/fundingList/newList.do?page="${status.index} class="razo razo-btn mt-50">${status.index}</a>
                        </c:forEach>
                        <a href="/TunaMusic/crowdFunding/fundingList/newList.do?page="${newList.page+1} class="razo razo-btn mt-50">Next</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
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
<script src="/TunaMusic/resources/js/default-assets/active.js"></script>

</body>

</html>
