<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

 <!-- Title -->
    <title>TUNA MUSIC - MAGAZINE POST</title>

    <!-- Favicon -->
    <link rel="icon" href="/TunaMusic/resources/img/core-img/favicon.ico">

    <!-- Stylesheet -->
    <link rel="stylesheet" href="/TunaMusic/resources/style.css">

</head>
<body>
	 <!-- *로드 -->
    <div id="preloader">
        <div>
            <div class="spinner">
                <div class="double-bounce1"></div>
                <div class="double-bounce2"></div>
            </div>
            <span>Wait, please...</span>
        </div>
    </div>
    <!-- 로드 -->

   
    
	<!-- *게시글 쓰기 양식 -->
    <section class="blog-details-area section-padding-80">
        <div class="container">
            <!-- Post Details Text -->
            <div class="post-details-text">
                <div class="row justify-content-center">
                    <div class="col-12 col-sm-10 col-xl-9">

                        <!-- Leave A Reply -->
                        <div class="razo-contact-form">
                            <h2 class="mb-4">Write a post</h2>

                            <!-- Form -->
                            <form action="#" method="post">
                          
                                <div class="row">
                                    <div class="col-lg-12">
                                        <input type="text" name="message-name" class="form-control mb-30" placeholder="제목 입력">
                                    </div>
                                    <div class="col-12">
                                        <textarea rows="20"  name="message" class="form-control mb-30"  placeholder="내용 입력" style="height: 100%"></textarea>
                                    </div>
                                    
                                    <div class="col-lg-12">
                                        <input type="file" name="message-name" class="form-control mb-30" style="background-color: pink">
                                    </div>
                                    
                                    <div class="col-12" colspan="2" align="center"> 
                                        <button type="submit" class="btn razo-btn btn-3 mt-15">Post</button> 
                                        <button onclick="location.href=''" class="btn razo-btn btn-3 mt-15">back</button> 
                                    </div>
                                </div>
                          
                               
                            </form>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- *게시글 쓰기 양식 끝 -->
    
    
    
    
    
    
    
    
    
    
    


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