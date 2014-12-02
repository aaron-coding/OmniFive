Gigrr.Views.GigsIndexItem = Backbone.View.extend({

  template: JST['gigs/index_item'],
  className: 'gigs-index-item',
  initialize: function(){
    this.listenTo(this.model, "sync", this.render);
    this.$el.attr("data-href", "#gigs/" + this.model.get("id"));
  },
  
  events: {
    "click .inner-gig-index": "navigateToGigUrl"
  },
  
  navigateToGigUrl: function(event){
    Backbone.history.navigate(this.$el.data("href"), { trigger: true })
  },
  
  render: function(){
    var renderedContent = this.template({ gig: this.model });
    this.$el.html(renderedContent);
    return this;
  }

});
