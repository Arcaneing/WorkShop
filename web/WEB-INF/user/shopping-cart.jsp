<%--
  Created by IntelliJ IDEA.
  User: ArcaneX
  Date: 2021/6/19
  Time: 23:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Shopping Cart - Brand</title>
    <link rel="stylesheet" href="../../src/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="../../src/fonts/fonts.css">
    <link rel="stylesheet" href="../../src/fonts/fontawesome-all.min.css">
    <link rel="stylesheet" href="../../src/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="../../src/fonts/fontawesome5-overrides.min.css">
    <link rel="stylesheet" href="../../src/css/baguetteBox.min.css">
    <link rel="stylesheet" href="../../src/css/Lista-Productos-Canito.css">
    <link rel="stylesheet" href="../../src/css/Search-Input-Responsive-with-Icon.css">
    <link rel="stylesheet" href="../../src/css/smoothproducts.css">
</head>

<body>
<nav class="navbar navbar-light navbar-expand-lg fixed-top bg-white clean-navbar">
    <div class="container"><i class="fas fa-shopping-bag" style="font-size: 24px;margin: 7px;"></i><a class="navbar-brand logo" href="#">商城</a><button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
        <div
                class="collapse navbar-collapse" id="navcol-1">
            <ul class="nav navbar-nav ml-auto">
                <li class="nav-item"><a class="nav-link active" href="shopping-cart.html">首页</a></li>
                <li class="nav-item"><a class="nav-link" href="contact-us.html">关于</a></li>
                <li class="nav-item"><a class="nav-link" href="#">这里放用户状态</a></li>
            </ul>
        </div>
    </div>
</nav>
<main class="page shopping-cart-page">
    <section class="clean-block clean-cart dark">
        <div class="container">
            <div class="block-heading">
                <h2 class="text-info">购物车</h2>
                <p>这里是购物车的简介</p>
            </div>
            <div class="content">
                <div class="row no-gutters">
                    <div class="col-md-12 col-lg-8">
                        <div class="items">
                            <div class="product">
                                <div class="row justify-content-center align-items-center">
                                    <div class="col-md-3">
                                        <div class="product-image"><img class="img-fluid d-block mx-auto image" src="assets/img/tech/image2.jpg"></div>
                                    </div>
                                    <div class="col-md-5 product-info"><a class="product-name" href="#">这里放商品名</a>
                                        <div class="product-specs">
                                            <div><span>Display:&nbsp;</span><span class="value">这里放型号</span></div>
                                            <div><span>RAM:&nbsp;</span><span class="value">这里放RAM</span></div>
                                            <div><span>Memory:&nbsp;</span><span class="value">这里放ROM</span></div>
                                        </div>
                                    </div>
                                    <div class="col-6 col-md-2 quantity"><label class="d-none d-md-block" for="quantity">Quantity</label><input type="number" id="number" class="form-control quantity-input" value="1"></div>
                                    <div class="col-6 col-md-2 price"><span>$这里放价格</span></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12 col-lg-4">
                        <div class="summary">
                            <h3>账单</h3>
                            <h4><span class="text">总价</span><span class="price">$360</span></h4>
                            <h4><span class="text">邮费</span><span class="price">$0</span></h4>
                            <h4><span class="text">合计</span><span class="price">$360</span></h4><button class="btn btn-primary btn-block btn-lg" type="button">结算</button><button class="btn btn-primary btn-block btn-lg" type="button" style="background: #ed2893;">返回</button></div>
                    </div>
                </div>
            </div>
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
<script src="../../src/js/jquery.min.js"></script>
<script src="../../src/bootstrap/js/bootstrap.min.js"></script>
<script src="../../src/css/baguetteBox.min.js"></script>
<script src="../../src/js/smoothproducts.min.js"></script>
<script src="../../src/js/theme.js"></script>
</body>

</html>