<%--
  Created by IntelliJ IDEA.
  User: ArcaneX
  Date: 2021/6/10
  Time: 12:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
  <title>Slider - Brand</title>
  <link rel="stylesheet" href="src/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="src/fonts/fonts.css">
  <link rel="stylesheet" href="src/fonts/fontawesome-all.min.css">
  <link rel="stylesheet" href="src/fonts/simple-line-icons.min.css">
  <link rel="stylesheet" href="src/css/Footer-Dark.css">
  <link rel="stylesheet" href="src/css/Social-Icons.css">
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
        <li class="nav-item"><a class="nav-link" href="index.jsp">首页</a></li>
        <li class="nav-item"><a class="nav-link" href="#">关于</a></li>
        <li class="nav-item"><a class="nav-link" href="login">登录</a></li>
      </ul>
    </div>
  </div>
</nav>
<main class="page">
  <section class="clean-block slider" style="height: 961px;">
    <div class="container">
      <div class="block-heading">
        <h2 class="text-info">WORKSHOP</h2>
        <p>这里是WORKSHOP的简介....我也不知道要写啥</p>
      </div>
      <div class="carousel slide" data-ride="carousel" id="carousel-1">
        <div class="carousel-inner">
          <div class="carousel-item active"><img class="w-50 d-block" src="http://localhost:8080/upload/686323500.png" alt="Slide Image"></div>
          <div class="carousel-item"><img class="w-10 d-block" src="http://localhost:8080/upload/686323500.png" alt="Slide Image"></div>
          <div class="carousel-item"><img class="w-10 d-block" src="http://localhost:8080/upload/686323500.png" alt="Slide Image"></div>
        </div>
        <div><a class="carousel-control-prev" href="#carousel-1" role="button" data-slide="prev"><span class="carousel-control-prev-icon"></span><span class="sr-only">Previous</span></a><a class="carousel-control-next" href="#carousel-1" role="button"
                                                                                                                                                                                             data-slide="next"><span class="carousel-control-next-icon"></span><span class="sr-only">Next</span></a></div>
        <ol class="carousel-indicators">
          <li data-target="#carousel-1" data-slide-to="0" class="active"></li>
          <li data-target="#carousel-1" data-slide-to="1"></li>
          <li data-target="#carousel-1" data-slide-to="2"></li>
        </ol>
      </div>
    </div>
  </section>
</main>
<div class="social-icons" style="height: 150px;"><a href="login"><i class="fas fa-user"></i></a><a href="catalog"><i class="fas fa-shopping-bag"></i></a><a href="cart"><i class="fas fa-shopping-cart"></i></a><a href="payment"><i class="fas fa-clipboard-list"></i></a></div>
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