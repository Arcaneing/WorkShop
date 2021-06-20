<%--
  Created by IntelliJ IDEA.
  User: ArcaneX
  Date: 2021/6/20
  Time: 14:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"   %>

<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>EDIT</title>
    <link rel="stylesheet" href="src/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="src/fonts/fonts.css">
    <link rel="stylesheet" href="src/fonts/fontawesome-all.min.css">
    <link rel="stylesheet" href="src/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="src/fonts/fontawesome5-overrides.min.css">
    <link rel="stylesheet" href="src/css/baguetteBox.min.css">
    <link rel="stylesheet" href="src/css/Lista-Productos-Canito.css">
    <link rel="stylesheet" href="src/css/Search-Input-Responsive-with-Icon.css">
    <link rel="stylesheet" href="src/css/smoothproducts.css">
    <link rel="stylesheet" href="src/css/style.css" />
    <link rel="stylesheet" href="src/css/editormd.css" />
</head>

<body>
<nav class="navbar navbar-light navbar-expand-lg fixed-top bg-white clean-navbar">
    <div class="container"><i class="fas fa-shopping-bag" style="font-size: 24px;margin: 7px;"></i><a class="navbar-brand logo" href="#">商城</a><button class="navbar-toggler" data-toggle="collapse"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button></div>
</nav>
<main class="page contact-us-page">
    <section class="clean-block clean-form dark">
        <div class="container">
            <div class="block-heading">
                <h2 class="text-info">商品详情</h2>
                <p>编辑商品详情页面</p>
            </div>
            <form style="max-width: 1193px;"><label>商品ID</label><input class="form-control" type="text" name="name" readonly="" value="${Goods.id}">
                <div class="form-group"><label>商品名称</label><input class="form-control" type="text" placeholder="初始值" name="name" value="${Goods.name}"></div>
                <div class="form-group"><label>商品标签</label><input class="form-control" type="text" name="label" value="${Goods.label}"></div>
                <div class="form-group"><label>价格</label><input class="form-control" type="number" name="price" value="${Goods.price}"></div><div class="form-group">
                    <div class="mb-3">
                        <label for="formFileMultiple" class="form-label">选择要上传的图片</label>
                        <input class="form-control" type="file" id="formFileMultiple" multiple>
                    </div>
                </div>
                <div class="form-group"></div>
                <div class="form-row">
                    <div class="col-md-12"><table id="example" class="table table-striped table-bordered" cellspacing="0" width="100%">
                        <thead>
                        <tr>
                            <th>Id</th>
                            <th>图片</th>
                            <th>操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${ImgList}" var="imgs">
                        <tr>
                            <td>${imgs.id}</td>
                            <td><img src="${imgs.path}"></td>
                            <td><button type="button" class="btn btn-danger" style="background: rgb(255,0,51);" onclick="window.location.href='/editDetail?id=${Goods.id}&delete=${imgs.id}'"><i class="far fa-trash-alt d-xl-flex justify-content-xl-center align-items-xl-center"></i></button>
                            </td>
                        </tr>
                        </c:forEach>

                        </tbody>
                    </table></div>
                    <div id="test-editormd">
                <textarea style="display:none;" name="md">
                    ${md}
                </textarea>
                    </div>
                    <button class="btn btn-primary btn-block" type="submit" style="background: rgb(0,123,255);">Send</button>
                </div>
            </form>
        </div>
    </section>
</main>
<div></div>
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
</footer>
<script src="src/js/jquery.min.js"></script>
<script src="src/bootstrap/js/bootstrap.min.js"></script>
<script src="src/css/baguetteBox.min.js"></script>
<script src="src/js/smoothproducts.min.js"></script>
<script src="src/js/theme.js"></script>
<script src="src/js/jquery.min1.1.js"></script>
<script src="src/js/editormd.min.js"></script>
<script type="text/javascript">
    var testEditor;

    $(function() {
        testEditor = editormd("test-editormd", {
            width   : "90%",
            height  : 640,
            syncScrolling : "single",
            path    : "../lib/"
        });

        /*
        // or
        testEditor = editormd({
            id      : "test-editormd",
            width   : "90%",
            height  : 640,
            path    : "../lib/"
        });
        */
    });
</script>
</body>

</html>

