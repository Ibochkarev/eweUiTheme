<?php

/** @var $modx modX */
if (!$modx = $object->xpdo AND !$object->xpdo instanceof modX) {
	return true;
}

/** @var $options */
switch ($options[xPDOTransport::PACKAGE_ACTION]) {
	case xPDOTransport::ACTION_INSTALL:
	case xPDOTransport::ACTION_UPGRADE:

		if (!$tmp = $modx->getObject('modSystemSetting', array('key' => 'ms2_product_thumbnail_size'))) {
			$tmp = $modx->newObject('modSystemSetting');
		}
		$tmp->fromArray(array(
			'namespace' => 'minishop2',
			'area'      => 'ms2_product',
			'xtype'     => 'textfield',
			'value'     => '260x260',
			'key'       => 'ms2_product_thumbnail_size',
		), '', true, true);
		$tmp->save();

		break;

	case xPDOTransport::ACTION_UNINSTALL:
		break;
}

return true;