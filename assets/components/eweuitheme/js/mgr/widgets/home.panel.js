eweUiTheme.panel.Home = function (config) {
    config = config || {};
    Ext.apply(config, {
        baseCls: 'modx-formpanel',
        layout: 'anchor',
        /*
         stateful: true,
         stateId: 'eweuitheme-panel-home',
         stateEvents: ['tabchange'],
         getState:function() {return {activeTab:this.items.indexOf(this.getActiveTab())};},
         */
        hideMode: 'offsets',
        items: [{
            html: '<h2>' + _('eweuitheme') + '</h2>',
            cls: '',
            style: {margin: '15px 0'}
        }, {
            xtype: 'modx-tabs',
            defaults: {border: false, autoHeight: true},
            border: true,
            hideMode: 'offsets',
            items: [{
                title: _('eweuitheme_items'),
                layout: 'anchor',
                items: [{
                    html: _('eweuitheme_intro_msg'),
                    cls: 'panel-desc',
                }, {
                    xtype: 'eweuitheme-grid-items',
                    cls: 'main-wrapper',
                }]
            }]
        }]
    });
    eweUiTheme.panel.Home.superclass.constructor.call(this, config);
};
Ext.extend(eweUiTheme.panel.Home, MODx.Panel);
Ext.reg('eweuitheme-panel-home', eweUiTheme.panel.Home);