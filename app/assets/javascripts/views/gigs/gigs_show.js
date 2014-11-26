Gigrr.Views.GigsShow = Backbone.View.extend({

  template: JST['gigs/show'],
  
  initialize: function(){
    this.listenTo(this.model, "sync", this.render)
  },
  
  render: function(){
    var renderedContent = this.template({ gig: this.model });
    this.$el.html(renderedContent);
    this.addGigExtras();
    return this;
  },
  
  addGigExtras: function(){
    var that = this;
    // to be added
  }
   
});
