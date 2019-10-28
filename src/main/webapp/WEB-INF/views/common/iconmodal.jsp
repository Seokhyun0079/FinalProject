<!-- Top Login Area Start -->
<div class="top-search-area">
    <div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content" style="width: 400px; height: 300px; margin-left: 30%; ">
                <div class="modal-body" style="position: relative; background-color: rgb(25, 25, 25); padding: 10px;">
                    <h1 style="color: white; padding-left: 23%">TUNA MUSIC</h1>
                    <form action="/TunaMusic/member/login/login.do" method="post" style="width: 100%; margin-top: 15px;">
                        <input type="text" name="userId" style="width: 80%; margin-left: 40px; margin-bottom: 8px" placeholder="ID">
                        <input type="password" name="userPwd" style="width: 80%; margin-left: 40px;" placeholder="PW">
                        <input type="submit" value="LOGIN" style="cursor:pointer; color: rgb(221, 35, 121);font-weight: bold; font-family:sans-serif; font-style:normal; background-color:transparent;  margin-top: 15px; font-size: 35px; box-shadow: 0px 0px 0px 0px;">
                        <div style="float: right;">
                            <div style="color:gray; width: 100%;"><a href="/TunaMusic/member/findIDPW.do" style="color:gray;">FORGOT ID/PW?</a></div>
                            <div style="color:gray; width: 100%;"><a href="/TunaMusic/member/findIDPW.do" style="color:gray; float: right;" >SIGN-UP</a></div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Top Login Area End -->