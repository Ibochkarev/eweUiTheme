var eweUiTheme = function (config) {
    config = config || {};
    eweUiTheme.superclass.constructor.call(this, config);
};
Ext.extend(eweUiTheme, Ext.Component, {
    page: {}, window: {}, grid: {}, tree: {}, panel: {}, combo: {}, config: {}, view: {}, utils: {}
});
Ext.reg('eweuitheme', eweUiTheme);

eweUiTheme = new eweUiTheme();