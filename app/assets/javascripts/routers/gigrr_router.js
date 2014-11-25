Gigrr.Routers.Router = Backbone.Router.extend({
  
  initialize: function(options){
    this.gigs = new Gigrr.Collections.Gigs();
    this.$rootEl = options.$rootEl;
  },
  
  routes: {
    "", "index"
  },
  
  index: {
    
  }
});
