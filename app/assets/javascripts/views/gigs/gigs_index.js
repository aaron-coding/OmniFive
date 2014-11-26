Gigrr.Views.GigsIndex = Backbone.View.extend({

  template: JST['gigs/index'],
  
  initialize: function(){
    this.listenTo(this.collection, "sync", this.render)
  },
  
  render: function(){
    var renderedContent = this.template({ gigs: this.collection });
    this.$el.html(renderedContent);
    var that = this;
    this.collection.each(function(gig) {
      var gigView = new Gigrr.Views.GigsIndexItem({ model: gig });
      that.$el.append(gigView.render().$el);
    });
    return this;
  },

   

});
