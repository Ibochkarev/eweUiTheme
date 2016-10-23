<div class="breadcrumbs__wrap breadcrumbs__center">
    <h3 class="breadcrumbs__title">[[*pagetitle]]</h3>
    [[pdoCrumbs?
        &showHome=`1`
        &tplWrapper=`@INLINE <ul class="breadcrumbs-s3" itemscope itemtype="http://schema.org/BreadcrumbList">[[+output]]</ul>`
        &tpl=`@INLINE <li class="breadcrumbs__item" itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem"><a href="[[+link]]" itemprop="item"><span itemprop="name">[[+menutitle]]</span></a>[[+wrapper]]</li>`
        &tplCurrent=`@INLINE <li class="breadcrumbs__item breadcrumbs__item--active" itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem"><a href="[[+link]]" itemprop="item"><span itemprop="name">[[+menutitle]]</span></a>[[+wrapper]]</li>`
    ]]
</div>