<%--
  Created by IntelliJ IDEA.
  User: ArcaneX
  Date: 2021/6/19
  Time: 23:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Shopping Cart - Brand</title>
    <link rel="stylesheet" href="src/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="src/fonts/fonts.css">
    <link rel="stylesheet" href="src/fonts/fontawesome-all.min.css">
    <link rel="stylesheet" href="src/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="src/fonts/fontawesome5-overrides.min.css">
    <link rel="stylesheet" href="src/css/baguetteBox.min.css">
    <link rel="stylesheet" href="src/css/Lista-Productos-Canito.css">
    <link rel="stylesheet" href="src/css/Search-Input-Responsive-with-Icon.css">
    <link rel="stylesheet" href="src/css/smoothproducts.css">
</head>

<body>
<nav class="navbar navbar-light navbar-expand-lg fixed-top bg-white clean-navbar">
    <div class="container"><i class="fas fa-shopping-bag" style="font-size: 24px;margin: 7px;"></i><a
            class="navbar-brand logo" href="#">商城</a>
        <button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span
                class="navbar-toggler-icon"></span></button>
        <div
                class="collapse navbar-collapse" id="navcol-1">
            <ul class="nav navbar-nav ml-auto">
                <li class="nav-item"><a class="nav-link active" href="index.jsp">首页</a></li>
                <li class="nav-item"><a class="nav-link" href="contact-us.html">关于</a></li>
                <li class="nav-item"><a class="nav-link" href="cart">购物车</a></li>
            </ul>
        </div>
    </div>
</nav>
<main class="page payment-page">
    <section class="clean-block payment-form dark">
        <div class="container">
            <div class="block-heading">
                <h2 class="text-info">支付页面</h2>
                <p>支付简介</p>
            </div>
            <form>
                <div class="products">
                    <h3 class="title">订单</h3>
                    <c:set var="cout" value="0"/>
                    <c:forEach items="${cartLists}" var="cart">
                    <div class="item"><span class="price">$${cart.goods_price * cart.cart_num}</span>
                        <p class="item-name">${cart.goods_name}</p>
                        <p class="item-description">$${cart.goods_price} × ${cart.cart_num}</p>
                        <c:set  value="${cout + cart.goods_price * cart.cart_num}" var="cout"/>
                    </div>
                    </c:forEach>
                    <div class="total"><span>总价</span><span class="price">$${cout}</span></div>
                </div>
                <div class="card-details">
                    <h3 class="title">收件地址</h3><input type="text" class="form-control" placeholder="随便放点什么有点儿不想写了....." />
                    <div class="form-row">
                        <div class="col-sm-12">
                            <div class="form-group"><button class="btn btn-primary btn-block" type="submit">提交</button></div>
                        </div>
                    </div>
                </div>
            </form>
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
<script type="text/javascript" src="src/js/dang.js"></script>
</body>

</html>