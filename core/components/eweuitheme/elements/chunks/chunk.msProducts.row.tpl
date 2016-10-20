<div class="row product-card-row ms2_product" itemtype="http://schema.org/Product" itemscope>
    <meta itemprop="description" content="[[+description:default=`[[+pagetitle]]`]]">

    <div class="col-md-2">
        <div class="product-image">
            {if $thumb?}
                <a href="{$id | url}"><img src="[[+260x260]]" itemprop="image" alt="{$pagetitle}" title="{$pagetitle}"/></a>
            {else}
                <a href="{$id | url}"><img src="{'assets_url' | option}components/minishop2/img/web/ms2_small.png"
                                           srcset="{'assets_url' | option}components/minishop2/img/web/ms2_small@2x.png 2x"
                                           itemprop="image" alt="{$pagetitle}" title="{$pagetitle}"/></a>
            {/if}
        </div>
    </div>

    <div class="col-md-7">
        <div class="product-detail" itemtype="http://schema.org/AggregateOffer" itemprop="offers" itemscope>
            <meta itemprop="category" content="[[#[[+parent]].pagetitle]]">
            <meta itemprop="brand" content="[[+vendor.name]]">
            <meta itemprop="offerCount" content="1">
            <meta itemprop="price" content="[[+price:replace=` ==`]]">
            <meta itemprop="lowPrice" content="[[+old_price:replace=` ==`]]">
            <meta itemprop="priceCurrency" content="RUR">

            <span class="product-vendor" itemprop="brand">[[+vendor.name]]</span>

            <span class="product-title" itemprop="name">{$pagetitle}</span>

            {if $introtext}
                <div class="product-description">
                    {$introtext}
                </div>
            {/if}

        </div>
    </div>

    <div class="col-md-3">
        <form method="post" class="ms2_form">

            <span class="flags">
                {if $new?}
                    <i class="glyphicon glyphicon-flag" title="{'ms2_frontend_new' | lexicon}"></i>
                {/if}
                {if $popular?}
                    <i class="glyphicon glyphicon-star" title="{'ms2_frontend_popular' | lexicon}"></i>
                {/if}
                {if $favorite?}
                    <i class="glyphicon glyphicon-bookmark" title="{'ms2_frontend_favorite' | lexicon}"></i>
                {/if}
            </span>
            <div class="product-price">

            <span class="price">
                {$price} RUB <!-- {'ms2_frontend_currency' | lexicon} -->
            </span>

                {if $old_price?}
                    <span class="last-price">{$old_price} RUB<!-- {'ms2_frontend_currency' | lexicon} --></span>
                {/if}

            </div>

            <button class="btn" type="submit" name="ms2_action" value="cart/add">
                <i class="glyphicon glyphicon-barcode"></i> {'ms2_frontend_add_to_cart' | lexicon}
            </button>
            <input type="hidden" name="id" value="{$id}">
            <input type="hidden" name="count" value="1">
            <input type="hidden" name="options" value="[]">
        </form>

    </div>
</div>

<!--minishop2_popular <i class='glyphicon glyphicon-star' title='[[%ms2_frontend_popular]]'></i>-->
<!--minishop2_new <i class='glyphicon glyphicon-flag' title='[[%ms2_frontend_new]]'></i>-->
<!--minishop2_favorite <i class='glyphicon glyphicon-bookmark' title='[[%ms2_frontend_favorite]]'></i>-->
<!--minishop2_old_price <span class='old_price'>[[+old_price]] [[%ms2_frontend_currency]]</span>-->