Ext.onReady(function () {
    eweUiTheme.config.connector_url = OfficeConfig.actionUrl;

    var grid = new eweUiTheme.panel.Home();
    grid.render('office-eweuitheme-wrapper');

    var preloader = document.getElementById('office-preloader');
    if (preloader) {
        preloader.parentNode.removeChild(preloader);
    }
});