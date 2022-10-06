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
        .container {
        	width : 90%;
            margin: auto;
            max-width: 1110px;
        }
        header, main, aside {
            width: 100%;
            margin: 0 auto;
        }
        header {
            margin-top: 10px;
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
            cursor : pointer;
        }
        .menuli:nth-child(1) {
            padding: 12px 20px 0 0;
        }
		@media ( max-width: 700px ) {
       		.menuli:not(:nth-child(1)){
           	 display: none;
         	}
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
            background-position: center;
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
        @media ( max-width: 700px ) {
             #sec2 > div p{
               display: none;
            }
        }
        
        #sec3 {
            background: url(https://i.ibb.co/72cgtsz/carbon.jpg) no-repeat;
            background-size: cover;
            text-align: left;
            color:#eee;
         margin-bottom: 20px;
         background-position: center;
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
		width: 100%;
		display : grid;
		grid-template-columns : 1fr 1fr 1fr 1fr;
		grid-template-rows : 100%;
		grid-template-areas : 'item1 item2 item3 item4';
		gap : 20px;
	}
#second{
		display : grid;
		width: 100%;
		grid-template-columns : 1fr 1fr 1fr 1fr;
		grid-template-rows : 100%;
		grid-template-areas : 'item5 item6 item7 item8';
		gap : 20px;
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
		width : 100%;
		margin-bottom: 20px;
	}
	#item img {
		width : 100%;
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
	@media (max-width : 700px) {
	#first{
		display : grid;
		grid-template-columns : 1fr 1fr;
		grid-template-rows : 1fr 1fr;
		grid-template-areas : 'item1 item2''item3 item4';
		gap : 20px;
	}
	#second{
		display : grid;
		grid-template-columns : 1fr 1fr;
		grid-template-rows : 1fr 1fr;
		grid-template-areas : 'item5 item6''item7 item8';
		gap : 20px;
	}
	#item {
		width:100%;
	}
	}
	@media (max-width : 500px) {
		#first{
		display : grid;
		grid-template-columns : 1fr;
		grid-template-rows : 1fr 1fr 1fr 1fr;
		grid-template-areas : 'item1''item2''item3''item4';
		gap : 20px;
	}
	#second{
		display : grid;
		grid-template-columns : 1fr;
		grid-template-rows : 1fr 1fr 1fr 1fr;
		grid-template-areas : 'item5''item6''item7''item8';
		gap : 20px;
	}
	#item {
		width:100%;
	}



	
    </style>
</head>

<body>
<div class="container">
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
    
	</div>
	<footer class="footers">
		<jsp:include page="/WEB-INF/views/footer.jsp"/>
	</footer>
</body>
</html>