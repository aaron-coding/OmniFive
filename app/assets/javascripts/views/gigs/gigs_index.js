Gigrr.Views.GigsIndex = Backbone.View.extend({

  template: JST['gigs/index'],
  
  initialize: function(){
    this.listenTo(this.collection, "sync", this.render)
    this.$el.addClass("container-fluid")
  },
  
  render: function(){
    var renderedContent = this.template({ gigs: this.collection });
    this.$el.html(renderedContent);
    var that = this;
    this.collection.each(function(gig) {
      var gigView = new Gigrr.Views.GigsIndexItem({ model: gig });
      that.$(".gigs-index").append(gigView.render().$el);
    });
    return this;
  },

   

});
