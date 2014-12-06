Gigrr.Routers.Router = Backbone.Router.extend({
  
  initialize: function(options){
    this.gigs = new Gigrr.Collections.Gigs();
    this.$rootEl = options.$rootEl;
    this.orders = new Gigrr.Collections.Orders();
  },
  
  routes: {
    "": "homePage",
    "gigs/new": "gigsNew",
    "gigs/:id": "gigsShow",
    "users/:id": "usersShow",
    "users/:id/edit": "usersEdit",
    "orders/:id": "ordersShow"
  },
  
  homePage: function() {
    $('.navbar-nav.nav li').removeClass('active');
    $('#home-tab').addClass('active');
    this.gigs.fetch();
    var indexView = new Gigrr.Views.GigsHomePage({ collection: this.gigs });
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
    $('.navbar-nav.nav li').removeClass('active');
    var user = new Gigrr.Models.User({ id: id })
    user.fetch();
    var showView = new Gigrr.Views.UsersShow({ model: user });
    this._swapView(showView);  
  },
  
  usersEdit: function(id){
    $('.navbar-nav.nav li').removeClass('active');
    $('#edit-user-tab').addClass('active');
    var user = new Gigrr.Models.User({ id: id })
    user.fetch();
    var usersEditView = new Gigrr.Views.UsersEdit({ model: user });
    this._swapView(usersEditView); 
  },
  
  ordersShow: function(id){
    $('.navbar-nav.nav li').removeClass('active');
    var order = this.orders.getOrFetch(id);
    var ordersShowView = new Gigrr.Views.OrdersShow({ model: order });
    this._swapView(ordersShowView);  
  },
  
  gigsNew: function(){
    $('.navbar-nav.nav li').removeClass('active');
    var newGig = new Gigrr.Models.Gig();
    var newGigView = new Gigrr.Views.GigsNew({ model: newGig });
    this._swapView(newGigView); 

  },
  
  _swapView: function(view){
    if (this._currentView){
      this._currentView.remove();
    }
    this._currentView = view;
    this.$rootEl.html(view.render().$el);
  },
  

});
