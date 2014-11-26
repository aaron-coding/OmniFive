Gigrr.Views.GigsIndexItem = Backbone.View.extend({

  template: JST['gigs/index_item'],
  tagName: "a",
  initialize: function(){
    this.listenTo(this.model, "sync", this.render);
    this.$el.addClass("gigs-index-item");
    this.$el.attr("href", "#gigs/" + this.model.get("id"));
  },
  
  render: function(){
    var renderedContent = this.template({ gig: this.model });
    this.$el.html(renderedContent);
    return this;
  }

});
