<?php
if (file_exists(dirname(dirname(dirname(dirname(__FILE__)))) . '/config.core.php')) {
    /** @noinspection PhpIncludeInspection */
    require_once dirname(dirname(dirname(dirname(__FILE__)))) . '/config.core.php';
}
else {
    require_once dirname(dirname(dirname(dirname(dirname(__FILE__))))) . '/config.core.php';
}
/** @noinspection PhpIncludeInspection */
require_once MODX_CORE_PATH . 'config/' . MODX_CONFIG_KEY . '.inc.php';
/** @noinspection PhpIncludeInspection */
require_once MODX_CONNECTORS_PATH . 'index.php';
/** @var eweUiTheme $eweUiTheme */
$eweUiTheme = $modx->getService('eweuitheme', 'eweUiTheme', $modx->getOption('eweuitheme_core_path', null,
        $modx->getOption('core_path') . 'components/eweuitheme/') . 'model/eweuitheme/'
);
$modx->lexicon->load('eweuitheme:default');

// handle request
$corePath = $modx->getOption('eweuitheme_core_path', null, $modx->getOption('core_path') . 'components/eweuitheme/');
$path = $modx->getOption('processorsPath', $eweUiTheme->config, $corePath . 'processors/');
$modx->getRequest();

/** @var modConnectorRequest $request */
$request = $modx->request;
$request->handleRequest(array(
    'processors_path' => $path,
    'location' => '',
));