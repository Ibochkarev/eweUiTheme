<footer class="footer-3">
    <div class="container">
        <div class="row">
            <div class="footer-top">
                <div class="col-md-9 col-sm-7 col-xs-12">
                    [[pdoMenu?
                        &parents=`0`
                        &level=`1`
                        &tplInner=`@INLINE [[+wrapper]]`
                        &tplParentRow=`@INLINE <li[[+classes]]><a href="[[+link]]" [[+attributes]]>[[+menutitle]]</a></li>[[+wrapper]]`
                    ]]
                </div>
                <div class="col-md-3 col-sm-5 col-xs-12">
                    <ul class="f-right">
                        <li><a href="#">Вход</a></li>
                        <li><a href="#">Регистрация</a></li>
                    </ul>
                </div>
            </div>
            <div class="footer-bottom">
                <div class="col-md-6 col-sm-6 col-xs-12">
                    <div class="copyright">[[!eweUiTheme.year? &start=`2016`]] &copy; [[++site_name]]</div>
                </div>
                <div class="col-md-6 col-sm-6 col-xs-12">
                    <img src="assets/components/eweuitheme/img/f-logo.png" alt="">
                </div>
            </div>
        </div>
    </div>
</footer>