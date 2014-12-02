Gigrr.Views.GigsIndex = Backbone.CompositeView.extend({

  template: JST['gigs/index'],
  
  initialize: function(){
    this.listenTo(this.collection, "sync", this.render)
    this.$el.addClass("container")
  },
  
  render: function(){
    var renderedContent = this.template();
    this.$el.html(renderedContent);
    this.addGigsSubviews();
    return this;
  },
  
  addGigsSubviews: function(){
    //All gigs in this collection are added to the page as their own view
    var that = this;
    this.collection.each(function(gig) { 
      var gigView = new Gigrr.Views.GigsIndexItem({ model: gig });
      that.addSubview(".gigs-index", gigView);
    });    
  }
});
