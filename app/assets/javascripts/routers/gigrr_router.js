Gigrr.Routers.Router = Backbone.Router.extend({
  
  initialize: function(options){
    this.gigs = new Gigrr.Collections.Gigs();
    this.$rootEl = options.$rootEl;
    this.orders = new Gigrr.Collections.Orders();
  },
  
  routes: {
    "": "gigsIndex",
    "gigs/:id": "gigsShow",
    "users/:id": "usersShow",
    "orders/:id": "ordersShow"
  },
  
  gigsIndex: function() {
    $('.navbar-nav.nav li').removeClass('active');
    $('#home-tab').addClass('active');
    this.gigs.fetch();
    var indexView = new Gigrr.Views.GigsIndex({ collection: this.gigs });
    this._swapView(indexView);
  },
  
  gigsShow: function(id){
    $('.navbar-nav.nav li').removeClass('active');
    // $('#home-tab').addClass('active');//activate the right one
    var gig = this.gigs.getOrFetch(id);
    var showView = new Gigrr.Views.GigsShow({ model: gig, orders: this.orders });
    this._swapView(showView);  
  },
  
  usersShow: function(id){
    var user = new Gigrr.Models.User({ id: id })
    user.fetch();
    var showView = new Gigrr.Views.UsersShow({ model: user });
    this._swapView(showView);  
  },
  
  ordersShow: function(id){
    var order = this.orders.getOrFetch(id);
    var ordersShowView = new Gigrr.Views.OrdersShow({ model: order });
    this._swapView(ordersShowView);  
  },
  
  _swapView: function(view){
    if (this._currentView){
      this._currentView.remove();
    }
    this._currentView = view;
    this.$rootEl.html(view.render().$el);
  },
  

});
