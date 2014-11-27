Gigrr.Views.GigExtrasShow = Backbone.View.extend({

  template: JST['gig_extras/show'],
  tagName: "<tr>",
  initialize: function(){
    this.listenTo(this.model, "sync", this.render)
  },
  
  render: function(){
    var renderedContent = this.template({ extra: this.model });
    this.$el.html(renderedContent);
    return this;
  },

});
