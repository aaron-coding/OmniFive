Gigrr.Routers.Router = Backbone.Router.extend({
  
  initialize: function(options){
    this.gigs = new Gigrr.Collections.Gigs();
    this.$rootEl = options.$rootEl;
  },
  
  routes: {
    "": "gigsIndex",
    "posts/:id": "gigsShow"
  },
  
  gigsIndex: function() {
    this.gigs.fetch();
    var indexView = new Gigrr.Views.GigsIndex({ collection: this.gigs });
    this._swapView(indexView);
  },
  
  _swapView: function(view){
    if (this._currentView){
      this._currentView.remove();
    }
    this._currentView = view;
    this.$rootEl.html(view.render().$el);
  },
  
  gigsShow: function(id){
    var gig = this.gigs.getOrFetch(id);
    
  }
});
