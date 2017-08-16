<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<script type="text/javascript">

$(document).ready(function() {

});

</script>
<form id="mainFrm" name="mainFrm">

</form>
<div class="row">
	<div class="col-md-12">
        <div class="card">
            <div class="row">
                <div class="col-md-6">
                    <div class="header">
                        <h4 class="title">Colors</h4>
                    </div>
                    <div class="content" id="doksurio">
                        <button class="btn btn-default btn-fill btn-wd" id="defaultBtId">Default</button>
                        <button class="btn btn-primary btn-fill btn-wd">Primary</button>
                        <button class="btn btn-info btn-fill btn-wd">Info</button>
                        <button class="btn btn-success btn-fill btn-wd">Success</button>
                        <button class="btn btn-warning btn-fill btn-wd">Warning</button>
                        <button class="btn btn-danger btn-fill btn-wd">Danger</button>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="header">
                        <h4 class="title">Styles</h4>
                    </div>
                    <div class="content">
                        <button class="btn btn-wd">Default</button>
                        <button class="btn btn-fill btn-wd">Fill</button>
                        <button class="btn btn-fill btn-round btn-wd">Fill + Round</button>
                        <button class="btn btn-round btn-wd">Round</button>
                        <button class="btn btn-simple btn-wd">Simple</button>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="header">
                        <h4 class="title">Buttons with Label</h4>
                    </div>
                    <div class="content">
                        <button type="button" class="btn btn-wd btn-success">
                            <span class="btn-label">
                                <i class="fa fa-check"></i>
                            </span>
                            Success
                        </button>
                        <button type="button" class="btn btn-wd btn-danger">
                            <span class="btn-label">
                                <i class="fa fa-times"></i>
                            </span>
                            Danger
                        </button>
                        <button type="button" class="btn btn-wd btn-info">
                            <span class="btn-label">
                                <i class="fa fa-exclamation"></i>
                            </span>
                            Info
                        </button>
                        <button type="button" class="btn btn-wd btn-warning">
                            <span class="btn-label">
                                <i class="fa fa-warning"></i>
                            </span>
                            Warning
                        </button>
                        <button type="button" class="btn btn-wd btn-default">
                            <span class="btn-label">
                                <i class="fa fa-arrow-left"></i>
                            </span>
                            Left
                        </button>
                        <button type="button" class="btn btn-wd btn-default">
                            Right
                            <span class="btn-label btn-label-right">
                                <i class="fa fa-arrow-right"></i>
                            </span>
                        </button>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="header">
                        <h4 class="title">Sizes</h4>
                    </div>
                    <div class="content">
                        <button class="btn btn-lg btn-fill">Large</button>
                        <button class="btn btn-fill">Default</button>
                        <button class="btn btn-sm btn-fill">Small</button>
                        <button class="btn btn-xs btn-fill">X-Small</button>
                        <br>
                        <button class="btn btn-round btn-lg btn-fill">Large</button>
                        <button class="btn btn-round btn-fill">Default</button>
                        <button class="btn btn-round btn-sm btn-fill">Small</button>
                        <button class="btn btn-round btn-xs btn-fill">X-Small</button>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="header">
                        <h4 class="title">Button Group</h4>
                    </div>
                    <div class="content">
                        <div class="btn-group">
                           <button type="button" class="btn btn-default">Left</button>
                           <button type="button" class="btn btn-default">Middle</button>
                           <button type="button" class="btn btn-default">Right</button>
                        </div>

                        <br><br>
                        <div class="btn-group">
                           <button type="button" class="btn btn-default">1</button>
                           <button type="button" class="btn btn-default">2</button>
                           <button type="button" class="btn btn-default">3</button>
                           <button type="button" class="btn btn-default">4</button>
                        </div>
                        <div class="btn-group">
                           <button type="button" class="btn btn-default">5</button>
                           <button type="button" class="btn btn-default">6</button>
                           <button type="button" class="btn btn-default">7</button>
                        </div>
                        <div class="btn-group">
                           <button type="button" class="btn btn-default">8</button>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="header">
                        <h4 class="title">Pagination</h4>
                    </div>
                    <div class="content">
                        <ul class="pagination">
                            <!--
                                color-classes: "pagination-blue", "pagination-azure", "pagination-orange", "pagination-red", "pagination-green"
                            -->
                            <li><a href="#">«</a></li>
                            <li><a href="#">1</a></li>
                            <li><a href="#">2</a></li>
                            <li class="active"><a href="#">3</a></li>
                            <li><a href="#">4</a></li>
                            <li><a href="#">5</a></li>
                            <li><a href="#">»</a></li>
                        </ul>
                        <ul class="pagination pagination-no-border">
                            <li><a href="#">«</a></li>
                            <li><a href="#">1</a></li>
                            <li><a href="#">2</a></li>
                            <li class="active"><a href="#">3</a></li>
                            <li><a href="#">4</a></li>
                            <li><a href="#">5</a></li>
                            <li><a href="#">»</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-8">
    	<div class="content">
            <form id="frmReq" action="eightTest.do" class="form-horizontal">
                <div class="form-group">
                    <input type="text" 	name="name" class="form-control" placeholder="Username">
                </div>
                <button class="btn btn-primary btn-fill btn-wd">체크박스 전송</button>      
                <label class="checkbox checkbox-inline">
                    <input type="checkbox" name="hanq" data-toggle="checkbox" value="아이디">아이디
                </label>

                <label class="checkbox checkbox-inline">
                    <input type="checkbox" name="hanq" data-toggle="checkbox" value="이름">이름
                </label>

                <label class="checkbox checkbox-inline">
                    <input type="checkbox" name="hanq" data-toggle="checkbox" value="나이">나이
                </label>
                
                <label class="checkbox checkbox-inline">
                    <input type="checkbox" name="hanq" data-toggle="checkbox" value="국가">국가
                </label>
                
                <label class="checkbox checkbox-inline">
                    <input type="checkbox" name="hanq" data-toggle="checkbox" value="기타">기타
                </label>
                <!-- 이하 여섯개의 체크박스를 클릭하여 submit시 해당체크박스와 일치하는 테이블데이터의 뒤에 ★★★★을 붙여 화면에 보여줍니다. 
                	ex 한큐체크박스 체크 시:  	이름
                						한큐★★★★
                						두큐 
                -->
                <label class="checkbox checkbox-inline">
                    <input type="checkbox" name="usernameValue" data-toggle="checkbox" value="한큐">이름:한큐
                </label>

                <label class="checkbox checkbox-inline">
                    <input type="checkbox" name="usernameValue" data-toggle="checkbox" value="두큐">이름:두큐
                </label>

                <label class="checkbox checkbox-inline">
                    <input type="checkbox" name="countryValue" data-toggle="checkbox" value="한국">국적:한국
                </label>
                
                <label class="checkbox checkbox-inline">
                    <input type="checkbox" name="countryValue" data-toggle="checkbox" value="러시아">국적:러시아
                </label>
                
                <label class="checkbox checkbox-inline">
                    <input type="checkbox" name="ageValue" data-toggle="checkbox" value="12">나이:12살
                </label>
                
                <label class="checkbox checkbox-inline">
                    <input type="checkbox" name="ageValue" data-toggle="checkbox" value="13">나이:13살
                </label>
                
            </form>
        </div>
        <div class="card">
            <div class="header">
                <h4 class="title">Edit Profile</h4>
            </div>
            <div class="content">
                <div class="row">
                    <div class="col-md-5">
                        <div class="form-group">
                            <label>Company (disabled)</label>
                            <input type="text" class="form-control" disabled placeholder="Company" value="Creative Code Inc.">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>회원아이디</label>
                            <input type="text" class="form-control" placeholder="Username" value="hanq">
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="exampleInputEmail1">이메일 주소</label>
                            <input type="email" class="form-control" placeholder="Email">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>이름</label>
                            <input type="text" class="form-control" placeholder="Company" value="한석현">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>닉네임</label>
                            <input type="text" class="form-control" placeholder="Last Name" value="한큐">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <label>가입이유</label>
                            <input type="text" class="form-control" placeholder="Home Address" value="모든걸 다 들어주겠다!">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>주소</label>
                            <input type="text" class="form-control" placeholder="City" value="서울시 구로구 개봉동">
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>상세주소</label>
                            <input type="text" class="form-control" placeholder="Country" value="개봉푸르지오">
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>우편번호</label>
                            <input type="number" class="form-control" placeholder="ZIP Code">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <label>About Me</label>
                            <textarea rows="5" class="form-control" placeholder="Here can be your description" value="Mike">모두가 프리랜서가 되는 그날까지!</textarea>
                        </div>
                    </div>
                </div>
                <button type="submit" class="btn btn-info btn-fill pull-right">Update Profile</button>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
    <div class="col-md-4">
        <div class="card card-user">
            <div class="image">
                <img src="images/bootstrap/full-screen-image-3.jpg" alt="..."/>
            </div>
            <div class="content">
                <div class="author">
                     <a href="#">
                    <img class="avatar border-gray" src="images/bootstrap/default-avatar.PNG" alt="..."/>
                      <h4 class="title">한큐에 자바<br />
                         <small>과외의 신!</small>
                      </h4>
                    </a>
                </div>
                <p class="description text-center"> "절대 포기하면 안된다 <br>
                                    연봉이 높은 사람이 성공하는게 아니다. 프리 먼저 하는사람이 성공하는거다.~ <br>
                                    실력이 좋고 준비를 잘해도 이바닥은 용기가 없으면 안된다."
                </p>
            </div>
            <hr>
            <div class="text-center">
                <button href="#" class="btn btn-simple"><i class="fa fa-facebook-square"></i></button>
                <button href="#" class="btn btn-simple"><i class="fa fa-twitter"></i></button>
                <button href="#" class="btn btn-simple"><i class="fa fa-google-plus-square"></i></button>

            </div>
        </div>
    </div>

</div>