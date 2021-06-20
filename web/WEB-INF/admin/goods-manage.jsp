<%--
  Created by IntelliJ IDEA.
  User: ArcaneX
  Date: 2021/6/20
  Time: 1:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"   %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Contact Us - Brand</title>
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
    <div class="container"><i class="fas fa-shopping-bag" style="font-size: 24px;margin: 7px;"></i><a class="navbar-brand logo" href="#">商城</a><button class="navbar-toggler" data-toggle="collapse"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button></div>
</nav>
<main class="page contact-us-page">
    <div class="text-center block-heading" style="padding-top: 18px;">
        <h2 class="text-info">商品管理</h2>
        <p>这里是商品管理简介</p>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <h2 style="width: 343px;">商品列表</h2>
            </div>
            <div class="col-md-4 d-flex justify-content-end align-self-start"><i class="fas fa-search d-xl-flex justify-content-xl-center align-items-xl-center"></i><input class="border rounded d-xl-flex justify-content-xl-center align-items-xl-center search-field" type="search" id="search-field" style="background-color: #eaeaea;width: 80%;height: 38px;padding: 0px;margin-left: 17px;"
                                                                                                                                                                            name="search"><button class="btn btn-primary" type="button" style="width: 68px;">搜索</button></div>
            <div class="col-md-4 d-flex justify-content-center align-items-center"><button class="btn btn-primary d-flex align-items-center align-self-center" type="button" style="height: 38px;background-color: rgb(21,221,4); " onclick="window.location.href='/build'">添加商品<i class="fa fa-plus-circle"></i></button></div>
        </div>
        <div class="row">
            <div class="col-md-12"><table id="example" class="table table-striped table-bordered" cellspacing="0" width="100%">
                <thead>
                <tr>
                    <th>Id</th>
                    <th>商品名称</th>
                    <th>分类</th>
                    <th>价格</th>
                    <th>动作</th>
                </tr>
                </thead>
                <tbody>

                <c:forEach items="${GoodsList}" var="goods">
                    <tr>
                        <td>${goods.id}</td>
                        <td>${goods.name}</td>
                        <td>${goods.label}</td>
                        <td>${goods.price}</td>
                        <td><button type="button" class="btn btn-danger"><i class="far fa-trash-alt d-xl-flex justify-content-xl-center align-items-xl-center"></i></button>
                            <button type="button" class="btn btn-warning" onclick="window.location.href='/editDetail?id=${goods.id}'"><i class="fas fa-pencil-alt d-xl-flex justify-content-xl-center align-items-xl-center"></i></button>
                        </td>
                    </tr>

                </c:forEach>
                </tbody>
            </table></div>
        </div>
    </div>
</main>
<script src="src/js/jquery.min.js"></script>
<script src="src/bootstrap/js/bootstrap.min.js"></script>
<script src="src/css/baguetteBox.min.js"></script>
<script src="src/js/smoothproducts.min.js"></script>
<script src="src/js/theme.js"></script>
</body>

</html>