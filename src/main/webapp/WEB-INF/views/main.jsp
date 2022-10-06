<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
            width: 80%;
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
            background-color: antiquewhite;
            margin-top: 15px;
        }
        aside {
            display: flex;
            align-items: center;
        }
        aside img {
            margin: 0 10px;
        }
        footer {
            width: 100%;
            background-color: antiquewhite;
        }

    </style>
</head>

<body>
    <header>
        <img src="https://i.ibb.co/wwLhz98/logo.png" alt="">
    </header>
    <main>
        <section>section1</section>
        <section>section1</section>
        <section>section1</section>
        <section>section1</section>
        <section>section1</section>
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
    <footer>
        푸터
    </footer>
</body>
</html>