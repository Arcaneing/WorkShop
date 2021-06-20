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
                        <div class="items" style="width: 1109px;">
                            <div class="product">
                                <table id="example" class="table table-striped table-bordered" width="100%">
                                    <thead>
                                    <tr>
                                        <th>图片</th>
                                        <th>商品名称</th>
                                        <th>数量</th>
                                        <th>价格</th>
                                        <th>动作</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${cartLists}" var="cart">
                                    <tr>
                                        <td><img src="${cart.goods_image}" width="200" height="200"/></td>
                                        <td>${cart.goods_name}</td>
                                        <td>${cart.cart_num}</td>
                                        <td>${cart.goods_price}</td>
                                        <td>
                                            <button class="btn btn-primary" type="button" style="  width: 38px;
"><i class="fas fa-plus" onclick="window.location.href='/cart?plus=${cart.cart_id}&num=${cart.cart_num}'"></i></button>
                                            <button class="btn btn-primary" type="button" style="  width: 38px;
"><i class="fas fa-minus" onclick="window.location.href='/cart?minus=${cart.cart_id}&num=${cart.cart_num}'"></i></button>
                                            <button class="btn btn-danger" type="button" style="  width: 38px;
"><i class="fas fa-trash" onclick="window.location.href='/cart?delete=${cart.cart_id}&num=${cart.cart_num}'"></i></button>
                                        </td>
                                    </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                            <button class="btn btn-primary" type="button" onclick="window.location.href='/payment'">结算</button>
                        </div>
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
<script src="src/js/jquery.min.js"></script>
<script src="src/bootstrap/js/bootstrap.min.js"></script>
<script src="src/css/baguetteBox.min.js"></script>
<script src="src/js/smoothproducts.min.js"></script>
<script src="src/js/theme.js"></script>
<script type="text/javascript" src="src/js/dang.js"></script>
</body>

</html>