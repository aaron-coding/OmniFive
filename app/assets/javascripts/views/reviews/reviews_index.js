Gigrr.Views.ReviewsIndex = Backbone.View.extend({

  template: JST['reviews/index'],
    
  initialize: function(options){
  },
  
  render: function(){
    var renderedContent = this.template({ collection: this.collection });
    this.$el.html(renderedContent);
    return this;
  },


});
