<?php
/** @var modX $modx */
/** @var array $sources */

$chunks = array();

$tmp = array(
    // Base chunk
    'tpl.eweUiTheme.head' => array(
        'file' => 'head',
        'description' => '',
    ),
    'tpl.eweUiTheme.script' => array(
        'file' => 'script',
        'description' => '',
    ),
    // Catalog view products
    'tpl.eweUiTheme.msProducts-1' => array(
        'file' => 'msProducts-1',
        'description' => '',
    ),
    'tpl.eweUiTheme.msProducts-2' => array(
        'file' => 'msProducts-2',
        'description' => '',
    ),
    'tpl.eweUiTheme.msProducts-3' => array(
        'file' => 'msProducts-3',
        'description' => '',
    ),
    'tpl.eweUiTheme.msProducts-4' => array(
        'file' => 'msProducts-4',
        'description' => '',
    ),
    'tpl.eweUiTheme.msProducts-5' => array(
        'file' => 'msProducts-5',
        'description' => '',
    ),
    'tpl.eweUiTheme.msProducts.row' => array(
        'file' => 'msProducts.row',
        'description' => '',
    ),
    // Product content
    'tpl.eweUiTheme.msProduct.content-1' => array(
        'file' => 'msProduct.content-1',
        'description' => '',
    ),
    // Footer chunk
    'tpl.eweUiTheme.footer-v1' => array(
        'file' => 'footer-v1',
        'description' => 'Footer version 1',
    ),
    'tpl.eweUiTheme.footer-v2' => array(
        'file' => 'footer-v2',
        'description' => 'Footer version 2',
    ),
    'tpl.eweUiTheme.footer-v3' => array(
        'file' => 'footer-v3',
        'description' => 'Footer version 3',
    ),
    'tpl.eweUiTheme.footer-v4' => array(
        'file' => 'footer-v4',
        'description' => 'Footer version 4',
    ),
    // msGallery
    'tpl.eweUiTheme.msGallery' => array(
        'file' => 'msGallery',
        'description' => '',
    ),
);

// Save chunks for setup options
$BUILD_CHUNKS = array();

foreach ($tmp as $k => $v) {
    /** @var modChunk $chunk */
    $chunk = $modx->newObject('modChunk');
    $chunk->fromArray(array(
        'id' => 0,
        'name' => $k,
        'description' => @$v['description'],
        'snippet' => file_get_contents($sources['source_core'] . '/elements/chunks/chunk.' . $v['file'] . '.tpl'),
        'static' => BUILD_CHUNK_STATIC,
        'source' => 1,
        'static_file' => 'core/components/' . PKG_NAME_LOWER . '/elements/chunks/chunk.' . $v['file'] . '.tpl',
    ), '', true, true);

    $chunks[] = $chunk;

    $BUILD_CHUNKS[$k] = file_get_contents($sources['source_core'] . '/elements/chunks/chunk.' . $v['file'] . '.tpl');
}
unset($tmp);

return $chunks;