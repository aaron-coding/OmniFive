Gigrr.Views.UsersShow = Backbone.CompositeView.extend({

  template: JST['users/show'],
  
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
    var that = this;  
    this.model.gigs().each(function(gig){
      var gigView = new Gigrr.Views.GigsIndexItem({ model: gig });
      that.addSubview(".gigs-index", gigView);
    });
  }
  
});
