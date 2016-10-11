<?php
/** @var modX $modx */
/** @var array $sources */

$chunks = array();

$tmp = array(
    'tpl.eweUiTheme.item' => array(
        'file' => 'item',
        'description' => '',
    ),
    'tpl.eweUiTheme.office' => array(
        'file' => 'office',
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