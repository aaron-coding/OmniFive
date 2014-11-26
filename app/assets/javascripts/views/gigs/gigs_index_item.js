Gigrr.Views.GigsIndexItem = Backbone.View.extend({

  template: JST['gigs/index_item'],
  
  initialize: function(){
    this.listenTo(this.model, "sync", this.render)
    this.$el.addClass("gig-index-item md-col-4")
  },
  
  render: function(){
    var renderedContent = this.template({ gig: this.model });
    this.$el.html(renderedContent);
    return this;
  }

});
