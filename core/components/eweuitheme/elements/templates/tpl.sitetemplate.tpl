<!DOCTYPE html>
<html>
<head>
    [[$tpl.eweUiTheme.head]]
</head>
<body>

<section>
    <div class="container">
        <div class="row">
            <h1 class="title center-text">
                Аксессуары
            </h1>
        </div>

        <section class="products">

            [[!msProducts?
            &tpl=`tpl.ewe.msProducts.row`
            &parents=`2`
            &includeThumbs=`260x260`
            ]]

        </section>

        <section class="products">

            [[!msProducts?
            &tpl=`tpl.ewe.msProducts-1`
            &parents=`2`
            &includeThumbs=`260x260`
            ]]

        </section>

        <section class="products">

            [[!msProducts?
            &tpl=`tpl.ewe.msProducts-2`
            &parents=`2`
            &includeThumbs=`260x260`
            ]]

        </section>

        <section class="products">

            [[!msProducts?
            &tpl=`tpl.ewe.msProducts-3`
            &parents=`2`
            &includeThumbs=`260x260`
            ]]

        </section>

    </div>
</section>

<section class="similar-products">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h3 class="title-section">Похожие товары</h3>
            </div>
        </div>

        <div class="similars">

            <div class="product-card product-1">
                <a href="#">

                    <div class="product-info">
                        <h5>Miansai</h5>
                        <h6>Кожаный браслет «шнур» с крюком</h6>
                    </div>

                    <div class="product-image">
                        <img src="assets/app/img/products/Miansai.jpg" width="800" height="800" alt="">
                    </div>

                    <div class="product-price">
                        32 000 Р
                        <span class="last-price">38 450 Р</span>
                    </div>

                </a>
            </div>

            <div class="product-card product-2">
                <a href="#">

                    <div class="product-info">
                        <h5>Lotuff Leather</h5>
                        <h6>Портфель Triumph</h6>
                    </div>

                    <div class="product-image">
                        <img src="assets/app/img/products/alpha-bravo.jpg" width="800" height="800" alt="">
                    </div>

                    <div class="product-price">
                        32 000 Р
                    </div>

                    <div class="product-footer">
                <span class="rating">
                    2
                </span>
                <span class="review">
                    4 отзыва
                </span>
                    </div>

                </a>
            </div>



            <div class="product-card product-2">
                <a href="#">

                    <div class="product-info">
                        <h5>Lotuff Leather</h5>
                        <h6>Портфель Triumph</h6>
                    </div>

                    <div class="product-image">
                        <img src="assets/app/img/products/alpha-bravo.jpg" width="800" height="800" alt="">
                    </div>

                    <div class="product-price">
                        32 000 Р
                    </div>

                    <div class="product-footer">
                <span class="rating">
                    2
                </span>
                <span class="review">
                    4 отзыва
                </span>
                    </div>

                </a>
            </div>


        </div>

    </div>
</section>


[[$tpl.eweUiTheme.footer-v1]]

<div class="hidden"></div>

<!--[if lt IE 9]>
<script src="assets/app/libs/html5shiv/es5-shim.min.js"></script>
<script src="assets/app/libs/html5shiv/html5shiv.min.js"></script>
<script src="assets/app/libs/html5shiv/html5shiv-printshiv.min.js"></script>
<script src="assets/app/libs/respond/respond.min.js"></script>
<![endif]-->

<!-- Load Scripts Start -->
<script>var scr = {"scripts":[
            {"src" : "app/js/libs.js", "async" : false},
            {"src" : "app/js/common.js", "async" : false}
            ]};!function(t,n,r){"use strict";var c=function(t){if("[object Array]"!==Object.prototype.toString.call(t))return!1;for(var r=0;r<t.length;r++){var c=n.createElement("script"),e=t[r];c.src=e.src,c.async=e.async,n.body.appendChild(c)}return!0};t.addEventListener?t.addEventListener("load",function(){c(r.scripts);},!1):t.attachEvent?t.attachEvent("onload",function(){c(r.scripts)}):t.onload=function(){c(r.scripts)}}(window,document,scr);
</script>
<!-- Load Scripts End -->

</body>
</html>