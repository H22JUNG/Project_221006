<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
         * {
            margin: 0;
            padding: 0;
        }
        header, main, aside {
            width: 60%;
            margin: 0 auto;
            min-width: 60%;
        }
        @media ( max-width: 1100px ) {
            header, main {
            width: 80%;
            margin: 0 auto;
            min-width: 80%;
          }
        }
        header {
            margin-top: 15px;
            margin-bottom: 10px;
        }
        aside {
            display: flex;
            align-items: center;
            margin-bottom: 20px;
        }
        aside img {
            margin: 0 10px;
        }
        footer {
            width: 100%;
            background-color: antiquewhite;
        }

	/* 큰 그림들  */
	 	#menuul {
            display: flex;
        }
        .menuli {
            list-style: none;
            padding:15px 10px 10px 10px;
            font-size: 13px;
        }
        .menuli:nth-child(1) {
            padding: 12px 20px 0 0;
        }

        header img {
            width: 110px;
            padding: 0px;
        }

        #sec1 {
            padding-top: 250px;
            padding-bottom: 50px;
            background: url(https://i.ibb.co/zGSDGCL/slide1.png) no-repeat;
            background-size: cover;
            text-align: center;
            background-position: center;
            margin-bottom: 20px;;
        }
        #sec1 > div a {
            text-decoration: none;
            padding: 12px 20px;
            background-color: rgb(38,38,38);
            color:white;
            font-weight: 900;
        }
        #sec2 {
            background: url(https://i.ibb.co/tBJGPD9/xbox.png) no-repeat;
            background-size: cover;
            text-align: left;
            margin-bottom: 20px;
            
        }
        #sec2 div {
            max-width: 400px;
            height: 300px;
            padding: 50px 0 0 30px;
        }
        #sec2 > div a {
            text-decoration: none;
            padding: 12px 20px;
            background-color: rgb(38,38,38);
            color:#eee;
            font-weight: 900;
        }
        #sec3 {
            background: url(https://i.ibb.co/72cgtsz/carbon.jpg) no-repeat;
            background-size: cover;
            text-align: left;
            color:#eee;
			margin-bottom: 20px;
            
        }
        #sec3 div {
            max-width: 600px;
            height: 260px;
            padding: 90px 0 0 30px;
        }
        #sec3 > div a {
            text-decoration: none;
            padding: 12px 20px;
            color: rgb(38,38,38);
            background-color:#eee;
            font-weight: 900;
        }
        
	/* DBList1 css*/
		#first{
		display : grid;
		grid-template-columns : 260px 260px 260px 260px;
		grid-template-rows : 330px;
		grid-template-areas : 'item1 item2 item3 item4';
		gap : 20px;
	}
	#second{
		display : grid;
		grid-template-columns : 260px 260px 260px 260px;
		grid-template-rows : 330px;
		grid-template-areas : 'item5 item6 item7 item8';
		gap : 20px;
		margin-bottom: 20px;
	}
	#item {
		display : flex;
		flex-direction : column;
		gap : 10px;
	}
	.item${vo.id} {
		grid-area : item${vo.id};
	}
	.item${vo2.id} {
		grid-area : item${vo2.id};
	}
	#item {
		width : 260px;
	}
	#item img {
		width : 100%;
		height : 150px;
		margin-bottom: 20px;
	}
	#item a {
		color : #0067b8;
		text-decoration : none;
		font-weight : bold;
	}
	#item p, a {
		font-size: 15px;
	}
	#item h4 {
		font-size: 17.55px;
	}
	
	/*DBList1 반응형*/
	@media (max-width : 980px) {
	#first{
		display : grid;
		grid-template-columns : 1fr 1fr;
		grid-template-rows : 330px 330px;
		grid-template-areas : 'item1 item2''item3 item4';
		gap : 20px;
	}
	#second{
		display : grid;
		grid-template-columns : 1fr 1fr;
		grid-template-rows : 330px 330px;
		grid-template-areas : 'item5 item6''item7 item8';
		gap : 20px;
	}
	#item {
		width:100%;
	}
	}
	@media (max-width : 760px) {
		#first{
		display : grid;
		grid-template-columns : 1fr;
		grid-template-rows : 330px 330px 330px 330px;
		grid-template-areas : 'item1''item2''item3''item4';
		gap : 20px;
	}
	#second{
		display : grid;
		grid-template-columns : 1fr;
		grid-template-rows : 330px 330px 330px 330px;
		grid-template-areas : 'item5''item6''item7''item8';
		gap : 20px;
	}
	#item {
		width:100%;
	}
	}

	/*footer*/
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
    padding: 30px;
}

.footer-link2{
    display: flex;
    flex-direction: row;
    padding-top: 0px;
}

#footer-inner1,#footer-inner2,#footer-inner3,#footer-inner4,#footer-inner5{
    display: flex;
    flex-direction: column;
    margin-right: 40px;
}

.footers p{
    font-size: 12px;
    color: #616161;
    margin-top: 20px;
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
        width: 88%;
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
    <header>
         <ul id="menuul">
            <li class="menuli"><a href="#"> <img src="https://i.ibb.co/wwLhz98/logo.png" alt=""></a></li>
            <li class="menuli">Office</li>
            <li class="menuli">Windows</li>
            <li class="menuli">Surface</li>
            <li class="menuli">Xbox</li>
            <li class="menuli">Deal</li>
            <li class="menuli">Support</li>
        </ul>
    </header>
    <main>
         <section id="sec1">
            <div>
                <h2>Surface Deals</h2>
                <p>Select Surfaces are on sale now - save while supplies last</p>
                <br><br>
                <a href="#">Shop Now</a>
              </div>
        </section>
        <section>
        <div id="first">
			<c:forEach items="${list}" var="vo">
				<div id="item" class="item${vo.id}">
				<img alt="" src="${vo.img}">
				<h4>${vo.head}</h4>
				<p>${vo.content}</p>
				<a href="#">${vo.link}</a>
				</div>
			</c:forEach>
		</div>
        </section>
        <section id="sec2">
            <div>
                <h2>Xbox Game Pass Ultimate</h2>
                <br>
                <p>Xbox Game Pass Ultimate Xbox Live Gold and over 100 high-quality console and PC games. Play together with friends and discover your next favorite game.</p>
                <br><br>
                <a href="#">Join Now</a>
            </div>
        </section>
        <section>
        <div id="second">
			<c:forEach items="${list2}" var="vo2">
				<div id="item" class="item${vo2.id}">
				<img alt="" src="${vo2.img}">
				<h4>${vo2.head}</h4>
				<p>${vo2.content}</p>
				<a href="#">${vo2.link}</a>
				</div>
			</c:forEach>
		</div>
        </section>
         <section id="sec3">
            <div>
                <h2>Commiting To Carbon Negative</h2>
                <br>
                <p>Microsoft will be carbon negative by 2030 and by 2050 we will remove all carbon the company has emitted since it was founded in 1975</p>
                <br><br>
                <a href="#">Learn More</a>
            </div>
        </section>
    </main>
    <aside>
        <p>Follow Microsoft</p>
        <a href="https://facebook.com">
            <img src="https://i.ibb.co/LrVMXNR/social-fb.png">
        </a>
        <a href="https://twitter.com">
            <img src="https://i.ibb.co/vJvbLwm/social-twitter.png">
        </a>
        <a href="https://linkedin.com">
            <img src="https://i.ibb.co/b30HMhR/social-linkedin.png">
        </a>
    </aside>
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