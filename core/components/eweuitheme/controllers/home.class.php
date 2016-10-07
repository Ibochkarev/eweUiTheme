<?php

/**
 * The home manager controller for eweUiTheme.
 *
 */
class eweUiThemeHomeManagerController extends modExtraManagerController
{
    /** @var eweUiTheme $eweUiTheme */
    public $eweUiTheme;


    /**
     *
     */
    public function initialize()
    {
        $path = $this->modx->getOption('eweuitheme_core_path', null,
                $this->modx->getOption('core_path') . 'components/eweuitheme/') . 'model/eweuitheme/';
        $this->eweUiTheme = $this->modx->getService('eweuitheme', 'eweUiTheme', $path);
        parent::initialize();
    }


    /**
     * @return array
     */
    public function getLanguageTopics()
    {
        return array('eweuitheme:default');
    }


    /**
     * @return bool
     */
    public function checkPermissions()
    {
        return true;
    }


    /**
     * @return null|string
     */
    public function getPageTitle()
    {
        return $this->modx->lexicon('eweuitheme');
    }


    /**
     * @return void
     */
    public function loadCustomCssJs()
    {
        $this->addCss($this->eweUiTheme->config['cssUrl'] . 'mgr/main.css');
        $this->addCss($this->eweUiTheme->config['cssUrl'] . 'mgr/bootstrap.buttons.css');
        $this->addJavascript($this->eweUiTheme->config['jsUrl'] . 'mgr/eweuitheme.js');
        $this->addJavascript($this->eweUiTheme->config['jsUrl'] . 'mgr/misc/utils.js');
        $this->addJavascript($this->eweUiTheme->config['jsUrl'] . 'mgr/misc/combo.js');
        $this->addJavascript($this->eweUiTheme->config['jsUrl'] . 'mgr/widgets/items.grid.js');
        $this->addJavascript($this->eweUiTheme->config['jsUrl'] . 'mgr/widgets/items.windows.js');
        $this->addJavascript($this->eweUiTheme->config['jsUrl'] . 'mgr/widgets/home.panel.js');
        $this->addJavascript($this->eweUiTheme->config['jsUrl'] . 'mgr/sections/home.js');

        $this->addHtml('<script type="text/javascript">
        eweUiTheme.config = ' . json_encode($this->eweUiTheme->config) . ';
        eweUiTheme.config.connector_url = "' . $this->eweUiTheme->config['connectorUrl'] . '";
        Ext.onReady(function() {
            MODx.load({ xtype: "eweuitheme-page-home"});
        });
        </script>
        ');
    }


    /**
     * @return string
     */
    public function getTemplateFile()
    {
        return $this->eweUiTheme->config['templatesPath'] . 'home.tpl';
    }
}