<%--
  Created by IntelliJ IDEA.
  User: ArcaneX
  Date: 2021/6/17
  Time: 20:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Catalog - Brand</title>
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
    <div class="container"><i class="fas fa-shopping-bag" style="font-size: 24px;margin: 7px;"></i><a
            class="navbar-brand logo" href="#">商城</a>
        <button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span
                class="navbar-toggler-icon"></span></button>
        <div
                class="collapse navbar-collapse" id="navcol-1">
            <ul class="nav navbar-nav ml-auto">
                <li class="nav-item"><a class="nav-link" href="shopping-cart.html">首页</a></li>
                <li class="nav-item"><a class="nav-link" href="contact-us.html">关于</a></li>
                <li class="nav-item"><a class="nav-link" href="cart">购物车</a></li>
<%--                <li class="nav-item"><a class="nav-link" href="#">这里放用户状态</a></li>--%>
            </ul>
        </div>
    </div>
</nav>
<main class="page catalog-page">
    <section class="clean-block clean-catalog dark">
        <div class="container">
            <div class="block-heading">
                <h2 class="text-info">商品页面</h2>
                <div class="row">
                    <div class="col-md-10 offset-md-1">
                        <div class="card m-auto" style="max-width:850px">
                            <div class="card-body">
                                <form class="d-flex align-items-center"><i
                                        class="fas fa-search d-none d-sm-block h4 text-body m-0"></i><input
                                        class="form-control form-control-lg flex-shrink-1 form-control-borderless"
                                        type="search" placeholder="搜索的商品......" name="searchbar">
                                    <button class="btn btn-success btn-lg"
                                            type="submit" style="background: rgb(0,123,255);width: 87px;">搜索
                                    </button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="content">
                <div class="row">
                    <div class="col-md-3">
                        <div class="d-none d-md-block">
                            <div class="filters">
                                <div class="filter-item">
                                    <h3>标签标题</h3>
                                    <div class="form-check"><input class="form-check-input" type="checkbox"
                                                                   id="formCheck-1"><label class="form-check-label"
                                                                                           for="formCheck-1">标签选项</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="d-md-none"><a class="btn btn-link d-md-none filter-collapse" data-toggle="collapse"
                                                  aria-expanded="false" aria-controls="filters" href="#filters"
                                                  role="button">Filters<i class="icon-arrow-down filter-caret"></i></a>
                            <div class="collapse"
                                 id="filters">
                                <div class="filters">
                                    <div class="filter-item">
                                        <h3>标签标题</h3>
                                        <div class="form-check"><input class="form-check-input" type="checkbox"
                                                                       id="formCheck-1"><label class="form-check-label"
                                                                                               for="formCheck-1">标签选项</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-9">
                        <div class="products">
                            <div class="row no-gutters">
                                <c:forEach items="${GoodsList}" var="goods">
                                    <div class="col-12 col-md-6 col-lg-4">
                                        <div class="clean-product-item">
                                            <div class="image"><a href="/produce?id=${goods.id}"><img class="img-fluid d-block mx-auto"
                                                                                src="${goods.img}"></a></div>
                                            <div class="product-name"><a href="#">${goods.name}</a></div>
                                            <div class="about">
                                                <div class="rating"><img src="src/img/star.svg"><img
                                                        src="src/img/star.svg"><img src="src/img/star.svg"><img
                                                        src="src/img/star-half-empty.svg"><img
                                                        src="src/img/star-empty.svg"></div>
                                                <div class="price">
                                                    <h3>$${goods.price}</h3>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                            <nav>
                                <ul class="pagination">
                                    <li class="page-item disabled"><a class="page-link" href="#"
                                                                      aria-label="Previous"><span
                                            aria-hidden="true">«</span></a></li>
                                    <li class="page-item active"><a class="page-link" href="#">1</a></li>
                                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                                    <li class="page-item"><a class="page-link" href="#" aria-label="Next"><span
                                            aria-hidden="true">»</span></a></li>
                                </ul>
                            </nav>
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
</body>

</html>
