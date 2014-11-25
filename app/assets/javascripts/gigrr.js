window.Gigrr = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function() {
    var $rootEl = $("#main");
    new Gigrr.Routers.Router({
      $rootEl: rootEl
    })
    Backbone.history.start()
    // alert('Hello from Backbone!');
  }
};

$(document).ready(function(){
  Gigrr.initialize();
});
