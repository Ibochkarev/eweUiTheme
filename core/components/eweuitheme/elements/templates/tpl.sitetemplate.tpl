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
            &tpl=`tpl.eweUiTheme.msProducts.row`
            &parents=`2`
            &includeThumbs=`260x260`
            ]]

        </section>

        <section class="products">

            [[!msProducts?
            &tpl=`tpl.eweUiTheme.msProducts-1`
            &parents=`2`
            &includeThumbs=`260x260`
            ]]

        </section>

        <section class="products">

            [[!msProducts?
            &tpl=`tpl.eweUiTheme.msProducts-2`
            &parents=`2`
            &includeThumbs=`260x260`
            ]]

        </section>

        <section class="products">

            [[!msProducts?
            &tpl=`tpl.eweUiTheme.msProducts-3`
            &parents=`2`
            &includeThumbs=`260x260`
            ]]

        </section>

        <section class="products">

            [[!msProducts?
            &tpl=`tpl.eweUiTheme.msProducts-4`
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

            [[!msProducts?
                &tpl=`tpl.eweUiTheme.msProducts-5`
                &parents=`2`
                &includeThumbs=`260x260`
            ]]

        </div>

    </div>
</section>


[[$tpl.eweUiTheme.footer-v1]]

<div class="hidden"></div>

[[$tpl.eweUiTheme.script]]

</body>
</html>