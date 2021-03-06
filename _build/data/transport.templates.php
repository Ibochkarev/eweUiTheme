<?php
$templates = array();
$tmp = array(
	'EweUiTheme.home' => array(
		'file' => 'sitetemplate',
		'description' => 'Template for home page',
	),
	'EweUiTheme.catalog.row' => array(
		'file' => 'catalog.row',
		'description' => 'Template for catalog row page',
	),
	'EweUiTheme.product' => array(
		'file' => 'product',
		'description' => 'Template for product page',
	),
);
foreach ($tmp as $k => $v) {
	/* @avr modTemplate $template */
	$template = $modx->newObject('modTemplate');
	$template->fromArray(array(
		'id' => 0,
		'templatename' => $k,
		'description' => @$v['description'],
		'content' => file_get_contents($sources['source_core'].'/elements/templates/tpl.'.$v['file'].'.tpl'),
		'static' => BUILD_TEMPLATE_STATIC,
		'source' => 1,
		'static_file' => 'core/components/'.PKG_NAME_LOWER.'/elements/templates/tpl.'.$v['file'].'.tpl',
	),'',true,true);
	$templates[] = $template;
}
unset($tmp);
return $templates;