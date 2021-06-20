<%--
  Created by IntelliJ IDEA.
  User: ArcaneX
  Date: 2021/6/20
  Time: 18:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Product - Brand</title>
    <link rel="stylesheet" href="src/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="src/fonts/fonts.css">
    <link rel="stylesheet" href="src/fonts/fontawesome-all.min.css">
    <link rel="stylesheet" href="src/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="src/fonts/simple-line-icons.min.css">
    <link rel="stylesheet" href="src/fonts/fontawesome5-overrides.min.css">
    <link rel="stylesheet" href="src/css/Bootstrap-Image-Uploader.css">
    <link rel="stylesheet" href="src/css/Drag--Drop-Upload-Form.css">
    <link rel="stylesheet" href="src/css/baguetteBox.min.css">
    <link rel="stylesheet" href="src/css/Lista-Productos-Canito.css">
    <link rel="stylesheet" href="src/css/Search-Input-Responsive-with-Icon.css">
    <link rel="stylesheet" href="src/css/smoothproducts.css">
    <link rel="stylesheet" href="src/css/style.css"/>
    <link rel="stylesheet" href="src/css/editormd.preview.css"/>
    <style>
        .editormd-html-preview {
            width: 90%;
            margin: 0 auto;
        }
    </style>
</head>

<body>
<nav class="navbar navbar-light navbar-expand-lg fixed-top bg-white clean-navbar">
    <div class="container"><i class="fas fa-shopping-bag" style="font-size: 24px;margin: 7px;"></i><a
            class="navbar-brand logo" href="#">商城</a>
        <button class="navbar-toggler" data-toggle="collapse"><span class="sr-only">Toggle navigation</span><span
                class="navbar-toggler-icon"></span></button>
        <ul
                class="nav navbar-nav ml-auto">
            <li class="nav-item"><a class="nav-link" href="index.jsp">主页</a></li>
            <li class="nav-item"><a class="nav-link" href="catalog">商品列表</a></li>
            <li class="nav-item"><a class="nav-link" href="cart">购物车</a></li>
        </ul>
    </div>
</nav>
<main class="page product-page">
    <section class="clean-block clean-product dark">
        <div class="container">
            <div class="block-heading">
                <h2 class="text-info">${goods.name}</h2>
                <p></p>
            </div>
            <div class="block-content">
                <div class="product-info">
                    <div class="row">
                        <div class="col-md-6">
                                <div class="gallery">
<%--                                    <div class="sp-wrap">--%>
<%--                                        <c:forEach items="${imgList}" var="img">--%>
<%--                                            <a href="${img.path}">--%>
<%--                                                <img class="img-fluid d-block mx-auto" src="${img.path}">--%> <%-- JS无法获取数据!!!!!!!!!!! --%>
<%--                                            </a>--%>
<%--                                        </c:forEach>--%>
<%--                                    </div>--%>
    <div class="sp-large"><a href="${goods.img}" class="sp-current-big"><img src="${goods.img}" alt=""></a></div>
                                </div>
                        </div>
                        <div class="col-md-6">
                            <div class="info">
                                <h3>${goods.name}</h3>
                                <div class="rating"><img src="src/img/star.svg"><img src="src/img/star.svg"><img
                                        src="src/img/star.svg"><img src="src/img/star-half-empty.svg"><img
                                        src="src/img/star-empty.svg"></div>
                                <div class="price">
                                    <h3>$${goods.price}</h3>
                                </div>
                                <div class="summary">
                                    <button class="btn btn-primary" style="color: #0a58ca" type="button"
                                            onclick="window.window.location.href='/catalog?cart=${goods.id}'"><i
                                            class="icon-basket"></i>加入购物车
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <div id="test-editormd-view2">
        <textarea id="append-test" style="display:none;">${md}</textarea>
    </div>
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
<script src="src/js/jquery.min.js"></script>
<script src="lib/marked.min.js"></script>
<script src="lib/prettify.min.js"></script>
<script src="lib/raphael.min.js"></script>
<script src="lib/underscore.min.js"></script>
<script src="lib/sequence-diagram.min.js"></script>
<script src="lib/flowchart.min.js"></script>
<script src="lib/jquery.flowchart.min.js"></script>

<script src="editormd.js"></script>
<script type="text/javascript">
    $(function () {
        var testEditormdView, testEditormdView2;

        $.get("test.md", function (markdown) {

            testEditormdView = editormd.markdownToHTML("test-editormd-view", {
                markdown: markdown,//+ "\r\n" + $("#append-test").text(),
                //htmlDecode      : true,       // 开启 HTML 标签解析，为了安全性，默认不开启
                htmlDecode: "style,script,iframe",  // you can filter tags decode
                //toc             : false,
                tocm: true,    // Using [TOCM]
                //tocContainer    : "#custom-toc-container", // 自定义 ToC 容器层
                //gfm             : false,
                //tocDropdown     : true,
                // markdownSourceCode : true, // 是否保留 Markdown 源码，即是否删除保存源码的 Textarea 标签
                emoji: true,
                taskList: true,
                tex: true,  // 默认不解析
                flowChart: true,  // 默认不解析
                sequenceDiagram: true,  // 默认不解析
            });

            //console.log("返回一个 jQuery 实例 =>", testEditormdView);

            // 获取Markdown源码
            //console.log(testEditormdView.getMarkdown());

            //alert(testEditormdView.getMarkdown());
        });

        testEditormdView2 = editormd.markdownToHTML("test-editormd-view2", {
            htmlDecode: "style,script,iframe",  // you can filter tags decode
            emoji: true,
            taskList: true,
            tex: true,  // 默认不解析
            flowChart: true,  // 默认不解析
            sequenceDiagram: true,  // 默认不解析
        });
    });
</script>
</body>

</html>
