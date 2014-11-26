Gigrr.Views.GigsIndex = Backbone.View.extend({

  template: JST['gigs/index'],
  initialize: function(){
    this.listenTo(this.collection, "sync", this.render)
  },
  render: function(){
    var renderedContent = this.template({ posts: this.collection });
    this.$el.html(renderedContent);
    return this;
  }

});
