<%--
  Created by IntelliJ IDEA.
  User: ArcaneX
  Date: 2021/6/16
  Time: 11:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Login - Brand</title>
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
                <c:if test="${param.loginInfo eq 'ok'}">
                    <li class="nav-item"><a class="nav-link" href="/userinfo">${UserName}</a></li>
                </c:if>
                <c:if test="${param.loginInfo eq 'wrong'}">
                    <li class="nav-item"><a class="nav-link" href="/register">注册</a></li>
                </c:if>
            </ul>
        </div>
    </div>
</nav>
<main class="page login-page">
    <section class="clean-block clean-form dark">
        <div class="container">
            <div class="block-heading">
                <h2 class="text-info">登录</h2>
                <p>欢迎</p>
            </div>
            <form name="login" method="post" action="login">
                <div class="form-group"><label for="email">Email</label><input class="form-control item" type="email" id="email" name="mail"></div>
                <div class="form-group"><label for="password">Password</label><input class="form-control" type="password" id="password" name="password"></div>
                <div class="form-group">
                    <div class="form-check"><input class="form-check-input" type="checkbox" id="checkbox" name="checkbox"><label class="form-check-label" for="checkbox">Remember me</label></div>
                <c:if test="${param.loginInfo eq 'wrong'}">
                    <div role="alert" class="alert alert-success" style="color: #282821;background: #fc5e72;height: 45px;padding: 11px;"><span><strong>账户或密码错误</strong></span></div>
                </c:if>
                <c:if test="${param.register eq 'true'}">
                    <div class="alert alert-success" role="alert"><span><strong>Register OK!</strong></span></div>
                </c:if>
                </div><button class="btn btn-primary btn-block" type="submit">登录</button></form>
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