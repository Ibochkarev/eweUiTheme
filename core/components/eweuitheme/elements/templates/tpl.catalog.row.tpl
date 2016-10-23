<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/html">
<head>
    [[$tpl.eweUiTheme.head]]
</head>
<body>

<div class="container">
    <div class="row">
        <h1 class="title center-text">
            [[*pagetitle]]
        </h1>
        [[$tpl.eweUiTheme.breadcrumbs-s1]]
        [[$tpl.eweUiTheme.breadcrumbs-s2]]
    </div>

    <section class="products">

        [[!msProducts?
            &tpl=`tpl.eweUiTheme.msProducts.row`
            &parents=`2`
            &includeThumbs=`260x260`
        ]]
     </section>

</div>


[[$tpl.eweUiTheme.footer-v3]]

<div class="hidden"></div>

[[$tpl.eweUiTheme.script]]

</body>
</html>