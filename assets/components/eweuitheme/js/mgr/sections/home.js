eweUiTheme.page.Home = function (config) {
    config = config || {};
    Ext.applyIf(config, {
        components: [{
            xtype: 'eweuitheme-panel-home',
            renderTo: 'eweuitheme-panel-home-div'
        }]
    });
    eweUiTheme.page.Home.superclass.constructor.call(this, config);
};
Ext.extend(eweUiTheme.page.Home, MODx.Component);
Ext.reg('eweuitheme-page-home', eweUiTheme.page.Home);