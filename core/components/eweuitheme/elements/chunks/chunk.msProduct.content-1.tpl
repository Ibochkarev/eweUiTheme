<div id="msProduct" class="row">
    <div class="col-md-6">
        [[!msGallery?
            &tpl=`tpl.eweUiTheme.msGallery`
        ]]
    </div>
    <div class="col-md-6">
        <form class="form-horizontal ms2_form" method="post">
            <input type="hidden" name="id" value="[[*id]]"/>

            <h4>[[*pagetitle]]</h4>

            <div class="form-group">
                <label class="col-md-2 control-label">[[%ms2_product_article]]:</label>
                <div class="col-md-10 form-control-static">
                    [[+article:default=`-`]]
                </div>
            </div>

            <div class="product-price">
                <div class="col-md-5">
                    <label class="label">[[%ms2_product_price]]:</label>
                    <span class="price">[[+price]] RUB</span>
                </div>
                <div class="col-md-7">
                    <label class="label">старая [[%ms2_product_price]]:</label>
                    [[+old_price:gt=`0`:then=`
                    <span class="old_price">[[+old_price]] RUB</span>
                    `:else=``]]
                </div>
            </div>

            <div class="form-group form-inline">
                <label class="col-md-2 control-label" for="product_price">[[%ms2_cart_count]]:</label>
                <div class="col-md-10">
                    <input type="number" name="count" id="product_price" class="input-sm form-control" value="1"/>
                    [[%ms2_frontend_count_unit]]
                </div>
            </div>

            <div class="form-group">
                <label class="col-md-2 control-label">[[%ms2_product_weight]]:</label>
                <div class="col-md-10 form-control-static">
                    [[+weight]] [[%ms2_frontend_weight_unit]]
                </div>
            </div>

            <div class="form-group">
                <label class="col-md-2 control-label">[[%ms2_product_made_in]]:</label>
                <div class="col-md-10 form-control-static">
                    [[+made_in:default=`-`]]
                </div>
            </div>

            [[msOptions?options=`color,size`]]

            [[msProductOptions]]

            <button class="btn" type="submit" name="ms2_action" value="cart/add">
                [[%ms2_frontend_add_to_cart]]
            </button>

            <ul class="tabs">
                <li>
                    <input type="radio" name="tabs" id="tab-1" checked>
                    <label for="tab-1">Описание</label>
                    <div class="tab-content">
                        [[*content]]
                    </div>
                </li>
                <li>
                    <input type="radio" name="tabs" id="tab-2">
                    <label for="tab-2">характеристики</label>
                    <div class="tab-content">
                        Ut enim ad minim veniam,
                        quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                        consequat.
                    </div>
                </li>
                <li>
                    <input type="radio" name="tabs" id="tab-3">
                    <label for="tab-3">Доставка и оплата</label>
                    <div class="tab-content">
                        Excepteur sint occaecat cupidatat non
                        proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                    </div>
                </li>
            </ul>
        </form>

    </div>
</div>
