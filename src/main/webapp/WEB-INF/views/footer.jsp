<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.footers{
    width: 100%;
    justify-content: center;
    align-items: center;
    display: flex;
    flex-direction: column;
    background-color: #f2f2f2;
    padding: 35px 0px;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}
.footer-title{
    color: #616161;
    font-size: 14px;
    margin-bottom : 15px;
}
.footers li{
    list-style: none;
}
.footers a{
    font-size: 12px;
    color: black;
    text-decoration: none;
}
.footer-link1{
    display: flex;
    flex-direction: row;
    margin-bottom: 30px;
    padding: 30px;
}
.footer-link2{
    display: flex;
    flex-direction: row;
    padding-top: 0px;
    padding : 0 30px;
}
#footer-inner1,#footer-inner2,#footer-inner3,#footer-inner4,#footer-inner5{
    display: flex;
    flex-direction: column;
    margin-right: 40px;
}
.footers p{
    font-size: 12px;
    color: #616161;
    margin-right: 40px;
}
.footer-link1 li{
    margin-bottom: 13px;
}
.footer-link2 li{
    float: left;
    margin-right: 20px;
}
@media (max-width :700px){
    .footer-link1{
        width: 400px;
        flex : 1;
        flex-wrap: wrap;
    }
    #footer-inner2,#footer-inner4,#footer-inner6{
        margin-left: 40px;
    }
    
    #footer-inner1, #footer-inner2,#footer-inner3,#footer-inner4{
    	margin-bottom : 20px
    }

    #footer-inner1 {
   	 	margin-right: 15px;
    }
    #footer-inner2 {
   	 	padding-left: 50px;
    }
    
    
}
@media (max-width :500px){
    .footer-link1{
        width: 50%;
        flex-wrap: wrap;
        padding-left : 0;
    }
    #footer-inner2,#footer-inner4,#footer-inner6{
        margin-left: 0px;
    }
    #footer-inner1 {
   	 	margin-right: 15px;
    }
    #footer-inner2 {
   	 	padding-left: 0px;
    }
}
</style>
</head>
<body>
<footer class="footers">
<div class="footer-link1">
    <div id="footer-inner1">
    <h3 class="footer-title">What's New</h3>
    <ul>
	<li><a href="${pageContext.request.contextPath}/#">Surface Pro X</a></li>
	<li><a href="#">Surface Laptop 3</a></li>
	<li><a href="#">Surface Pro 7</a></li>
	<li><a href="#">Windows 10 apps</a></li>
	<li><a href="#">Office apps</a></li>
    </ul>
    </div>
    <div id="footer-inner2">
    <h3 class="footer-title">Microsoft Store</h3>
    <ul>
	<li><a href="#">Account Profile</a></li>
	<li><a href="#">Download Center</a></li>
	<li><a href="#">Microsoft Store support</a></li>
	<li><a href="#">Returns</a></li>
	<li><a href="#">Older tracking</a></li>
    </ul>
    </div>
    <div id="footer-inner3">
    <h3 class="footer-title">Education</h3>
    <ul>
	<li><a href="#">Microsoft in education</a></li>
	<li><a href="#">Office for students</a></li>
	<li><a href="#">Office 365 for schools</a></li>
	<li><a href="#">Deals for students</a></li>
	<li><a href="#">Microsoft Azure</a></li>
    </ul>
    </div>
    <div id="footer-inner4">
    <h3 class="footer-title">Enterprise</h3>
    <ul>
	<li><a href="#">Azure</a></li>
	<li><a href="#">AppSource</a></li>
	<li><a href="#">Automotive</a></li>
	<li><a href="#">Goverment</a></li>
	<li><a href="#">Healthcare</a></li>
    </ul>
    </div>
    <div id="footer-inner5">
    <h3 class="footer-title">Developer</h3>
    <ul>
	<li><a href="#">Visual Studio</a></li>
	<li><a href="#">Windows Dev Center</a></li>
	<li><a href="#">Developer Network</a></li>
	<li><a href="#">TechNet</a></li>
	<li><a href="#">Microsoft Developer</a></li>
    </ul>
    </div>
   <div id="footer-inner6">
    <h3 class="footer-title">Company</h3>
    <ul>
	<li><a href="#">Careers</a></li>
	<li><a href="#">About Microsoft</a></li>
    <li><a href="#">Company news</a></li>
	<li><a href="#">Privacy at Microsoft</a></li>
	<li><a href="#">Invertors</a></li>
    </ul>
    </div>
</div>

<div class="footer-link2">
<p>English (United States)</p>
<ul>
	<li><a href="#">Sitemap</a></li>
	<li><a href="#">Contact Microsoft</a></li>
	<li><a href="#">Privacy & cookies</a></li>
	<li><a href="#">Terms of use</a></li>
	<li><a href="#">Trademarks</a></li>
	<li><a href="#">Safery & eco</a></li>
	<li><a href="#">About our ads</a></li>
	<li><a href="#">Microsoft 2020</a></li>
</ul>
</div>
</footer>
</body>
</html>
