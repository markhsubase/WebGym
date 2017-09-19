<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>發表文章</title>
	<link rel="Shortcut icon" type="image/x-icon" href="../images/Temmujiicon1.ico">
	<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
    <link href='../css/jquery.qtip.min.css' rel='stylesheet' />
    <link href="../css/bootstrap.min.css" rel="stylesheet" />
    <link href="../css/bootstrap-theme.min.css" rel="stylesheet" />
    <script src='../js/jquery.min.js'></script>
    <script src="../js/bootstrap.min.js"></script>


<style>
body{
	background-image: url(../images/postarticle_bg.jpg);
	background-size: cover;
	font-family: 'Montserrat', sans-serif;
}


#section-header{
	margin-top: 100px;
}

#section-header h1{
	font-size:40px;
	font-weight: bold;
}


</style>
<script>
$(document).ready(function(){
	$("#autobutton").click(function(){
		$("#title").val("小心零卡,低糖,低脂陷阱")
		$("#content").val("食品標示對於熱量上的計算有很大的幫助,但其中隱含了許多陷阱,例如零卡果凍、低糖蛋糕…等. 根據食藥署的規定,標示「零卡」表示每100公克或每100毫升所含熱量不得超過4大卡, 所以「零卡≠零熱量」, 通常是以熱量低的代糖取代果糖、砂糖,以無熱量的化學色素及香料取代天然水果, 標示低糖食品可能也為了維持口感而保留或添加更多的脂肪來維持口感, 還是建議多食用天然原型的食物才不會落入食品標示的陷阱喔!!")
		
	})
	
})
</script>
</head>
<body>
<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container">
		<div class="navbar-header">	
		</div>
		<div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav">
				<li style="margin-left: 500px;"><a class="navbar-brand" href="<c:url value="/trainercenter/trainer-welcome.jsp"/>">Temmujin Fitness</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
	              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Hi ${trainerLoginOK.trainerID } !</a>
	              <ul class="dropdown-menu">
	             	<li><a href="<c:url value="/trainercenter/opencourse.jsp"/>">New Course</a></li>
	                
	              </ul>
	            </li>
	            <li><a href="<c:url value="/LogoutServlet"/>">登出</a></li>
			</ul>
		</div>
		<!--/.nav-collapse -->
		</div>
	</nav>
<section id="section-header">
	<div class="container">
        <div class="row">
        	<div class="col-md-offset-2 col-md-8">
        		<h1 style="color:#ffffff;">Post Articles</h1>
        	</div>
        </div>
    </div>
</section>
<section id="section-content">
	<div class="container">
        <div class="row">
        	<div class="col-md-offset-2 col-md-8" style="padding-top:20px;background-color: #ffffff; border-radius: 20px;">      
                <form action="<c:url value="/postArticle.do"/>" method="POST" >
                    <div class="form-group">
                        <label for="title" style="font-size: 20px;color:#002147;">Article Title</label>
                        <input type="text" class="form-control input-lg" name="title" id="title" placeholder="title">
                        <label for="content" style="font-size: 20px;color:#002147;">Content</label>
                        <textarea class="form-control input-lg" name="content" rows="5" id="content" value='${param.content}'></textarea>
                         <input type="hidden" name="trainerid" class="form-control" id="id" value='${trainerLoginOK.trainerID}'>
                         <input type="hidden" name="posttime" class="form-control" id="time">
                    </div>
                    	<button type="button" id="autobutton" class="btn btn-info btn-lg" style="margin-bottom: 20px;">一鍵發文</button>
                    	<button type="reset" class="btn btn-default btn-lg" style="margin-bottom: 20px;">取消</button>
                    	<button type="submit" class="btn btn-primary btn-lg" style="margin-bottom: 20px;">發布文章</button>
                    	
<%--                      <font color='red'>${errorMsg.titleError}</font><br> --%>
<%--                      <font color='red'>${errorMsg.contentError}</font><br> --%>
                     
                </form>
            </div>
    	 </div>
	</div>
</section>

</body>
</html>