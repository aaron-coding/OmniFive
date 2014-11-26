window.Gigrr = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function() {
    var $rootEl = $("main"); //grab main html element (not ID main, aka #main)
    new Gigrr.Routers.Router({
      $rootEl: $rootEl
    })
    Backbone.history.start()
  }
};

$(document).ready(function(){
  Gigrr.initialize();
});
