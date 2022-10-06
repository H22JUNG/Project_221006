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

.footers h3{
    color: #616161;
    font-size: 14px;
    margin-left: 30px;
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
}

.footer-link2{
    display: flex;
    flex-direction: row;
}

#footer-inner1,#footer-inner2,#footer-inner3,#footer-inner4,#footer-inner5,#footer-inner6{
    display: flex;
    flex-direction: column;
}

.footers p{
    font-size: 12px;
    color: #616161;
    margin-top: 20px;
}

.footer-link2 li{
    float: left;
    margin-right: 20px;
}

@media (max-width :700px){
    .footer-link1{
        width: 66%;
        flex-wrap: wrap;
    }
    #footer-inner2,#footer-inner4,#footer-inner6{
        margin-left: 40px;
    }
}

@media (max-width :500px){
    .footer-link1{
        width: 50%;
        flex-wrap: wrap;
    }
    #footer-inner2,#footer-inner4,#footer-inner6{
        margin-left: 0px;
    }
}

</style>
</head>
<body>
<footer class="footers">
<div class="footer-link1">
    <div id="footer-inner1">
    <h3>What's New</h3>
    <ul>
	<li><a href="${pageContext.request.contextPath}/#">Surface Pro X</a></li>
	<li><a href="${pageContext.request.contextPath}/#">Surface Laptop 3</a></li>
	<li><a href="${pageContext.request.contextPath}/#">Surface Pro 7</a></li>
	<li><a href="${pageContext.request.contextPath}/#">Windows 10 apps</a></li>
	<li><a href="${pageContext.request.contextPath}/#">Office apps</a></li>
    </ul>
    </div>
    <div id="footer-inner2">
    <h3>Microsoft Store</h3>
    <ul>
	<li><a href="${pageContext.request.contextPath}/#">Account Profile</a></li>
	<li><a href="${pageContext.request.contextPath}/#">Download Center</a></li>
	<li><a href="${pageContext.request.contextPath}/#">Microsoft Store support</a></li>
	<li><a href="${pageContext.request.contextPath}/#">Returns</a></li>
	<li><a href="${pageContext.request.contextPath}/#">Older tracking</a></li>
    </ul>
    </div>
    <div id="footer-inner3">
    <h3>Education</h3>
    <ul>
	<li><a href="${pageContext.request.contextPath}/#">Microsoft in education</a></li>
	<li><a href="${pageContext.request.contextPath}/#">Office for students</a></li>
	<li><a href="${pageContext.request.contextPath}/#">Office 365 for schools</a></li>
	<li><a href="${pageContext.request.contextPath}/#">Deals for students</a></li>
	<li><a href="${pageContext.request.contextPath}/#">Microsoft Azure</a></li>
    </ul>
    </div>
    <div id="footer-inner4">
    <h3>Enterprise</h3>
    <ul>
	<li><a href="${pageContext.request.contextPath}/#">Azure</a></li>
	<li><a href="${pageContext.request.contextPath}/#">AppSource</a></li>
	<li><a href="${pageContext.request.contextPath}/#">Automotive</a></li>
	<li><a href="${pageContext.request.contextPath}/#">Goverment</a></li>
	<li><a href="${pageContext.request.contextPath}/#">Healthcare</a></li>
    </ul>
    </div>
    <div id="footer-inner5">
    <h3>Developer</h3>
    <ul>
	<li><a href="${pageContext.request.contextPath}/#">Visual Studio</a></li>
	<li><a href="${pageContext.request.contextPath}/#">Windows Dev Center</a></li>
	<li><a href="${pageContext.request.contextPath}/#">Developer Network</a></li>
	<li><a href="${pageContext.request.contextPath}/#">TechNet</a></li>
	<li><a href="${pageContext.request.contextPath}/#">Microsoft Developer</a></li>
    </ul>
    </div>
   <div id="footer-inner6">
    <h3>Company</h3>
    <ul>
	<li><a href="${pageContext.request.contextPath}/#">Careers</a></li>
	<li><a href="${pageContext.request.contextPath}/#"></a></li>
	<li><a href="${pageContext.request.contextPath}/#">About Microsoft</a></li>
    <li><a href="${pageContext.request.contextPath}/#">Company news</a></li>
	<li><a href="${pageContext.request.contextPath}/#">Privacy at Microsoft</a></li>
	<li><a href="${pageContext.request.contextPath}/#">Invertors</a></li>
    </ul>
    </div>
</div>

<div class="footer-link2">
<p>English (United States)</p>
<ul>
	<li><a href="${pageContext.request.contextPath}/#">Sitemap</a></li>
	<li><a href="${pageContext.request.contextPath}/#">Contact Microsoft</a></li>
	<li><a href="${pageContext.request.contextPath}/#">Privacy & cookies</a></li>
	<li><a href="${pageContext.request.contextPath}/#">Terms of use</a></li>
	<li><a href="${pageContext.request.contextPath}/#">Trademarks</a></li>
	<li><a href="${pageContext.request.contextPath}/#">Safery & eco</a></li>
	<li><a href="${pageContext.request.contextPath}/#">About our ads</a></li>
	<li><a href="${pageContext.request.contextPath}/#">Microsoft 2020</a></li>
</ul>
</div>
</footer>
</body>
</html>