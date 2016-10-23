<div class="product-card text-center ms2_product" itemtype="http://schema.org/Product" itemscope>
    <meta itemprop="description" content="[[+description:default=`[[+pagetitle]]`]]">
    <meta itemprop="brand" content="[[+vendor.name]]">
    <meta itemprop="name" content="{$pagetitle}">
    <link itemprop="url" href="{$id | url}" />

    <form method="post" class="ms2_form">
        <a href="{$id | url}">

            <div class="product-image">
                {if $thumb?}
                    <img src="[[+260x260]]" itemprop="image" alt="{$pagetitle}" title="{$pagetitle}"/>
                {else}
                    <img src="{'assets_url' | option}components/minishop2/img/web/ms2_small.png"
                         srcset="{'assets_url' | option}components/minishop2/img/web/ms2_small@2x.png 2x"
                         itemprop="image" alt="{$pagetitle}" title="{$pagetitle}"/>
                {/if}
            </div>

            <div class="product-info" itemtype="http://schema.org/AggregateOffer" itemprop="offers" itemscope>
                <meta itemprop="category" content="[[#[[+parent]].pagetitle]]">
                <meta itemprop="offerCount" content="1">
                <meta itemprop="price" content="[[+price:replace=` ==`]]">
                <meta itemprop="lowPrice" content="[[+old_price:replace=` ==`]]">
                <meta itemprop="priceCurrency" content="RUR">
                {if $owner?}
                    <span class="old_price">{$owner} {'ms2_frontend_currency' | lexicon}</span>
                {/if}
                <h5>[[+vendor.name]]</h5>
                <h6 itemprop="name">{$pagetitle}</h6>
                <h6 itemprop="category">[[#[[+parent]].pagetitle]]</h6>

            </div>

            <div class="product-price">
                {$price} RUB <!-- {'ms2_frontend_currency' | lexicon} -->
                {if $old_price?}
                    <span class="last-price">{$old_price} RUB<!-- {'ms2_frontend_currency' | lexicon} --></span>
                {/if}
            </div>

        </a>

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

        <button class="btn btn-default pull-right" type="submit" name="ms2_action" value="cart/add">
            <i class="glyphicon glyphicon-barcode"></i> {'ms2_frontend_add_to_cart' | lexicon}
        </button>

        <input type="hidden" name="id" value="{$id}">
        <input type="hidden" name="count" value="1">
        <input type="hidden" name="options" value="[]">
    </form>
</div>