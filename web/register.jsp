<%--
  Created by IntelliJ IDEA.
  User: ArcaneX
  Date: 2021/6/17
  Time: 21:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Register</title>
    <link rel="stylesheet" href="src/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="src/fonts/fonts.css">
    <link rel="stylesheet" href="src/fonts/fontawesome-all.min.css">
    <link rel="stylesheet" href="src/fonts/simple-line-icons.min.css">
    <link rel="stylesheet" href="src/css/baguetteBox.min.css">
    <link rel="stylesheet" href="src/css/Search-Input-Responsive-with-Icon.css">
    <link rel="stylesheet" href="src/css/smoothproducts.css">
</head>

<body>
<nav class="navbar navbar-light navbar-expand-lg fixed-top bg-white clean-navbar">
    <div class="container"><i class="fas fa-shopping-bag" style="font-size: 24px;margin: 7px;"></i><a class="navbar-brand logo" href="#">商城</a><button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
        <div
                class="collapse navbar-collapse" id="navcol-1">
            <ul class="nav navbar-nav ml-auto">
                <li class="nav-item"><a class="nav-link" href="shopping-cart.html">首页</a></li>
                <li class="nav-item"><a class="nav-link" href="contact-us.html">关于</a></li>
            </ul>
        </div>
    </div>
</nav>
<main class="page registration-page">
    <section class="clean-block clean-form dark">
        <div class="container">
            <div class="block-heading">
                <h2 class="text-info">注册</h2>
                <p>这里放注册简介</p>
            </div>
            <form method="post" name="reg" action="register">
                <div class="form-group"><label for="name">Name</label><input class="form-control item" type="text" id="name" name="name"></div>
                <div class="form-group"><label for="password">Password</label><input class="form-control item" type="password" id="password" name="password"></div>
                <div class="form-group"><label for="email">Email</label><input class="form-control item" type="email" id="email"name="mail"></div><button class="btn btn-primary btn-block" type="submit">Sign Up</button></form>
            <c:if test="${param.register eq 'false'}">
                <div role="alert" class="alert alert-success" style="color: #282821;background: #fc5e72;height: 45px;padding: 11px;"><span><strong>Mail Has Been used!</strong></span></div>
            </c:if>
        </div>
    </section>
</main>
<footer class="page-footer dark">
    <div class="container">
        <div class="row">
            <div class="col-sm-3">
                <h5>About us</h5>
                <ul>
                    <li><a href="#">关于</a></li>
                    <li><a href="#">联系我们</a></li>
                    <li><a href="#">主页</a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="footer-copyright">
        <p>© 2021 XXU ARCANE_X&nbsp;</p>
    </div>
</footer>
<script src="src/js/jquery.min.js"></script>
<script src="src/bootstrap/js/bootstrap.min.js"></script>
<script src="src/css/baguetteBox.min.js"></script>
<script src="src/js/smoothproducts.min.js"></script>
<script src="src/js/theme.js"></script>
</body>

</html>