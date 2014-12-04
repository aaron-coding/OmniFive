Gigrr.Views.OrdersShow = Backbone.View.extend({

  template: JST['orders/show'],
  className: "orders-show",
  initialize: function(options){
    this.listenTo(this.model, "sync", this.render);
  },
  
  render: function(){
    var renderedContent = this.template({ order: this.model });
    this.$el.html(renderedContent);
    return this;
  },

});
