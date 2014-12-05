Gigrr.Views.UsersShow = Backbone.CompositeView.extend({

  template: JST['users/show'],
  className: "users-show-wrapper",
  initialize: function(){
    this.listenTo(this.model, "sync", this.render);
  },
  
  render: function(){
    var renderedContent = this.template({ user: this.model });
    this.$el.html(renderedContent);
    this.addGigsSubviews();
    return this;
  },
  
  
  addGigsSubviews: function(){
    //All gigs belonging to the user are added to the page as their own view
    var gigIndexView = new Gigrr.Views.GigsIndex({ collection: this.model.gigs() });
    this.addSubview(".gigs-index", gigIndexView);
  }
  
});
