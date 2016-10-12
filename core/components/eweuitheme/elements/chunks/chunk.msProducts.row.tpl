<div class="row product-card-row ms2_product">
    <div class="col-md-2">
        <div class="product-image">
            {if $thumb?}
                <a href="{$id | url}"><img src="[[+260x260]]" alt="{$pagetitle}" title="{$pagetitle}"/></a>
            {else}
                <a href="{$id | url}"><img src="{'assets_url' | option}components/minishop2/img/web/ms2_small.png"
                                           srcset="{'assets_url' | option}components/minishop2/img/web/ms2_small@2x.png 2x"
                                           alt="{$pagetitle}" title="{$pagetitle}"/></a>
            {/if}
        </div>
    </div>
    <div class="col-md-7">
        <div class="product-detail">

            <span class="product-vendor">[[+vendor.name]]</span>

            <span class="product-title">{$pagetitle}</span>

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