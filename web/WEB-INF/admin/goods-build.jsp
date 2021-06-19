<%--
  Created by IntelliJ IDEA.
  User: ArcaneX
  Date: 2021/6/20
  Time: 1:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Register - Brand</title>
    <link rel="stylesheet" href="src/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="src/fonts/fonts.css">
    <link rel="stylesheet" href="src/fonts/fontawesome-all.min.css">
    <link rel="stylesheet" href="src/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="src/fonts/fontawesome5-overrides.min.css">
    <link rel="stylesheet" href="src/css/Bootstrap-Image-Uploader.css">
    <link rel="stylesheet" href="src/css/Drag--Drop-Upload-Form.css">
    <link rel="stylesheet" href="src/css/baguetteBox.min.js">
    <link rel="stylesheet" href="src/css/Lista-Productos-Canito.css">
    <link rel="stylesheet" href="src/css/Search-Input-Responsive-with-Icon.css">
    <link rel="stylesheet" href="src/css/smoothproducts.css">
</head>

<body>
<nav class="navbar navbar-light navbar-expand-lg fixed-top bg-white clean-navbar">
    <div class="container"><i class="fas fa-shopping-bag" style="font-size: 24px;margin: 7px;"></i><a
            class="navbar-brand logo" href="#">商城</a>
        <button class="navbar-toggler" data-toggle="collapse"><span class="sr-only">Toggle navigation</span><span
                class="navbar-toggler-icon"></span></button>
    </div>
</nav>
<main class="page registration-page">
    <section class="clean-block clean-form dark">
        <div class="container">
            <div class="block-heading">
                <h2 class="text-info">创建商品</h2>
                <p>这里是创建商品的简介</p>
            </div>
            <form style="max-width: 869px;"  action="build" method="post" enctype="multipart/form-data">
                <div class="form-group"><label for="name">商品名称</label><input class="form-control item" type="text"
                                                                             id="name" name="name"></div>
                <div class="form-group"><label for="name">商品标签</label><input class="form-control item" type="text"
                                                                             id="label" name="label"></div>
                <div class="form-group"><label for="name">商品价格</label><input class="form-control item" type="number"
                                                                             id="price" name="price"></div>
                <div class="bootstrap_img_upload">
                    <div class="container py-5">
                        <header class="text-white text-center">
                            <h1 class="display-4">上传商品封面</h1>
                        </header>
                        <div class="row py-4">
                            <div class="col-lg-6 mx-auto">

                                <!-- Upload image input-->
                                <div class="input-group mb-3 px-2 py-2 rounded-pill bg-white shadow-sm">
                                    <input id="upload" type="file" onchange="readURL(this);"
                                           class="form-control border-0" name="img">
                                    <label id="upload-label" for="upload" class="font-weight-light text-muted">Choose
                                        file</label>
                                    <div class="input-group-append">
                                        <label for="upload" class="btn btn-light m-0 rounded-pill px-4"> <i
                                                class="fa fa-cloud-upload mr-2 text-muted"></i><small
                                                class="text-uppercase font-weight-bold text-muted">Choose
                                            file</small></label>
                                    </div>
                                </div>

                                <!-- Uploaded image area-->
                                <p class="font-italic text-white text-center">上传的封面将在这个框内预览</p>
                                <div class="image-area mt-4"><img id="imageResult" src="#" alt=""
                                                                  class="img-fluid rounded shadow-sm mx-auto d-block">
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
                <button class="btn btn-primary btn-block" type="submit"
                        style="height: 40px;padding: 0px;width: 790px;margin-top: 22px;margin-right: 18px;margin-left: 0px;">
                    创建
                </button>
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
</footer>
<script src="src/js/jquery.min.js"></script>
<script src="src/bootstrap/js/bootstrap.min.js"></script>
<script src="src/css/baguetteBox.min.js"></script>
<script src="src/js/smoothproducts.min.js"></script>
<script src="src/js/theme.js"></script>
<script src="src/js/Bootstrap-Image-Uploader.js"></script>
</body>

</html>
