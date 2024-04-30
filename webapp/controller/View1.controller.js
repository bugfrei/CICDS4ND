sap.ui.define([
    "sap/ui/core/mvc/Controller"
],
    /**
     * @param {typeof sap.ui.core.mvc.Controller} Controller
     */
    function (Controller) {
        "use strict";

        return Controller.extend("cicds4nd.controller.View1", {
            onInit: function () {

            },
            huhuPress: function() {
                alert("Es geht");
            },
            reload: function() {
                location.reload();
            },
            refresh: function() {
                location.refresh();
            },
            reloadtrue: function() {
                location.reload(true);
            },
            reloadfalse: function() {
                location.reload(false);
            }

        });
    });
